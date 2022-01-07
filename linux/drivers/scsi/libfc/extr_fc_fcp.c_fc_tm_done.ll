; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_fcp.c_fc_tm_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_fcp.c_fc_tm_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_seq = type { i32 }
%struct.fc_frame = type { i32 }
%struct.fc_fcp_pkt = type { i32*, i32 }
%struct.fc_frame_header = type { i64 }

@FC_TYPE_BLS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fc_seq*, %struct.fc_frame*, i8*)* @fc_tm_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fc_tm_done(%struct.fc_seq* %0, %struct.fc_frame* %1, i8* %2) #0 {
  %4 = alloca %struct.fc_seq*, align 8
  %5 = alloca %struct.fc_frame*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.fc_fcp_pkt*, align 8
  %8 = alloca %struct.fc_frame_header*, align 8
  store %struct.fc_seq* %0, %struct.fc_seq** %4, align 8
  store %struct.fc_frame* %1, %struct.fc_frame** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = bitcast i8* %9 to %struct.fc_fcp_pkt*
  store %struct.fc_fcp_pkt* %10, %struct.fc_fcp_pkt** %7, align 8
  %11 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %12 = call i64 @IS_ERR(%struct.fc_frame* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  br label %54

15:                                               ; preds = %3
  %16 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %7, align 8
  %17 = call i64 @fc_fcp_lock_pkt(%struct.fc_fcp_pkt* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  br label %51

20:                                               ; preds = %15
  %21 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %7, align 8
  %22 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %7, align 8
  %27 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %25, %20
  br label %48

31:                                               ; preds = %25
  %32 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %33 = call %struct.fc_frame_header* @fc_frame_header_get(%struct.fc_frame* %32)
  store %struct.fc_frame_header* %33, %struct.fc_frame_header** %8, align 8
  %34 = load %struct.fc_frame_header*, %struct.fc_frame_header** %8, align 8
  %35 = getelementptr inbounds %struct.fc_frame_header, %struct.fc_frame_header* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @FC_TYPE_BLS, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %31
  %40 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %7, align 8
  %41 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %42 = call i32 @fc_fcp_resp(%struct.fc_fcp_pkt* %40, %struct.fc_frame* %41)
  br label %43

43:                                               ; preds = %39, %31
  %44 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %7, align 8
  %45 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %44, i32 0, i32 0
  store i32* null, i32** %45, align 8
  %46 = load %struct.fc_seq*, %struct.fc_seq** %4, align 8
  %47 = call i32 @fc_exch_done(%struct.fc_seq* %46)
  br label %48

48:                                               ; preds = %43, %30
  %49 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %7, align 8
  %50 = call i32 @fc_fcp_unlock_pkt(%struct.fc_fcp_pkt* %49)
  br label %51

51:                                               ; preds = %48, %19
  %52 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %53 = call i32 @fc_frame_free(%struct.fc_frame* %52)
  br label %54

54:                                               ; preds = %51, %14
  ret void
}

declare dso_local i64 @IS_ERR(%struct.fc_frame*) #1

declare dso_local i64 @fc_fcp_lock_pkt(%struct.fc_fcp_pkt*) #1

declare dso_local %struct.fc_frame_header* @fc_frame_header_get(%struct.fc_frame*) #1

declare dso_local i32 @fc_fcp_resp(%struct.fc_fcp_pkt*, %struct.fc_frame*) #1

declare dso_local i32 @fc_exch_done(%struct.fc_seq*) #1

declare dso_local i32 @fc_fcp_unlock_pkt(%struct.fc_fcp_pkt*) #1

declare dso_local i32 @fc_frame_free(%struct.fc_frame*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

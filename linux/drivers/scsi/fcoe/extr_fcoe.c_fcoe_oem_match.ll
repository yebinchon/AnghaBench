; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/fcoe/extr_fcoe.c_fcoe_oem_match.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/fcoe/extr_fcoe.c_fcoe_oem_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_frame = type { i32 }
%struct.fc_frame_header = type { i64, i32 }
%struct.fcp_cmnd = type { i32, i32 }
%struct.TYPE_3__ = type { i64 }

@fcoe_ddp_min = common dso_local global i64 0, align 8
@FC_RCTL_DD_UNSOL_CMD = common dso_local global i64 0, align 8
@FC_XID_UNKNOWN = common dso_local global i64 0, align 8
@FCP_CFL_WRDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fc_frame*)* @fcoe_oem_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fcoe_oem_match(%struct.fc_frame* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fc_frame*, align 8
  %4 = alloca %struct.fc_frame_header*, align 8
  %5 = alloca %struct.fcp_cmnd*, align 8
  store %struct.fc_frame* %0, %struct.fc_frame** %3, align 8
  %6 = load %struct.fc_frame*, %struct.fc_frame** %3, align 8
  %7 = call %struct.fc_frame_header* @fc_frame_header_get(%struct.fc_frame* %6)
  store %struct.fc_frame_header* %7, %struct.fc_frame_header** %4, align 8
  %8 = load %struct.fc_frame*, %struct.fc_frame** %3, align 8
  %9 = call %struct.TYPE_3__* @fr_fsp(%struct.fc_frame* %8)
  %10 = call i64 @fc_fcp_is_read(%struct.TYPE_3__* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %1
  %13 = load %struct.fc_frame*, %struct.fc_frame** %3, align 8
  %14 = call %struct.TYPE_3__* @fr_fsp(%struct.fc_frame* %13)
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @fcoe_ddp_min, align 8
  %18 = icmp sgt i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %12
  store i32 1, i32* %2, align 4
  br label %57

20:                                               ; preds = %12, %1
  %21 = load %struct.fc_frame*, %struct.fc_frame** %3, align 8
  %22 = call %struct.TYPE_3__* @fr_fsp(%struct.fc_frame* %21)
  %23 = icmp eq %struct.TYPE_3__* %22, null
  br i1 %23, label %24, label %55

24:                                               ; preds = %20
  %25 = load %struct.fc_frame_header*, %struct.fc_frame_header** %4, align 8
  %26 = getelementptr inbounds %struct.fc_frame_header, %struct.fc_frame_header* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @FC_RCTL_DD_UNSOL_CMD, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %55

30:                                               ; preds = %24
  %31 = load %struct.fc_frame_header*, %struct.fc_frame_header** %4, align 8
  %32 = getelementptr inbounds %struct.fc_frame_header, %struct.fc_frame_header* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i64 @ntohs(i32 %33)
  %35 = load i64, i64* @FC_XID_UNKNOWN, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %55

37:                                               ; preds = %30
  %38 = load %struct.fc_frame*, %struct.fc_frame** %3, align 8
  %39 = call %struct.fcp_cmnd* @fc_frame_payload_get(%struct.fc_frame* %38, i32 8)
  store %struct.fcp_cmnd* %39, %struct.fcp_cmnd** %5, align 8
  %40 = load %struct.fcp_cmnd*, %struct.fcp_cmnd** %5, align 8
  %41 = getelementptr inbounds %struct.fcp_cmnd, %struct.fcp_cmnd* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @FCP_CFL_WRDATA, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %37
  %47 = load %struct.fcp_cmnd*, %struct.fcp_cmnd** %5, align 8
  %48 = getelementptr inbounds %struct.fcp_cmnd, %struct.fcp_cmnd* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @ntohl(i32 %49)
  %51 = load i64, i64* @fcoe_ddp_min, align 8
  %52 = icmp sgt i64 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %46
  store i32 1, i32* %2, align 4
  br label %57

54:                                               ; preds = %46, %37
  br label %55

55:                                               ; preds = %54, %30, %24, %20
  br label %56

56:                                               ; preds = %55
  store i32 0, i32* %2, align 4
  br label %57

57:                                               ; preds = %56, %53, %19
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local %struct.fc_frame_header* @fc_frame_header_get(%struct.fc_frame*) #1

declare dso_local i64 @fc_fcp_is_read(%struct.TYPE_3__*) #1

declare dso_local %struct.TYPE_3__* @fr_fsp(%struct.fc_frame*) #1

declare dso_local i64 @ntohs(i32) #1

declare dso_local %struct.fcp_cmnd* @fc_frame_payload_get(%struct.fc_frame*, i32) #1

declare dso_local i64 @ntohl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

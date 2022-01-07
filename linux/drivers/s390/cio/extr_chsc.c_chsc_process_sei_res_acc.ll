; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_chsc.c_chsc_process_sei_res_acc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_chsc.c_chsc_process_sei_res_acc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chsc_sei_nt0_area = type { i32, i32, i32, i32 }
%struct.channel_path = type { i32 }
%struct.chp_link = type { i32, i32, %struct.chp_id }
%struct.chp_id = type { i32 }

@.str = private unnamed_addr constant [58 x i8] c"chsc: resource accessibility event (rs=%02x, rs_id=%04x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.chsc_sei_nt0_area*)* @chsc_process_sei_res_acc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @chsc_process_sei_res_acc(%struct.chsc_sei_nt0_area* %0) #0 {
  %2 = alloca %struct.chsc_sei_nt0_area*, align 8
  %3 = alloca %struct.channel_path*, align 8
  %4 = alloca %struct.chp_link, align 4
  %5 = alloca %struct.chp_id, align 4
  %6 = alloca i32, align 4
  store %struct.chsc_sei_nt0_area* %0, %struct.chsc_sei_nt0_area** %2, align 8
  %7 = load %struct.chsc_sei_nt0_area*, %struct.chsc_sei_nt0_area** %2, align 8
  %8 = getelementptr inbounds %struct.chsc_sei_nt0_area, %struct.chsc_sei_nt0_area* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.chsc_sei_nt0_area*, %struct.chsc_sei_nt0_area** %2, align 8
  %11 = getelementptr inbounds %struct.chsc_sei_nt0_area, %struct.chsc_sei_nt0_area* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @CIO_CRW_EVENT(i32 4, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %9, i32 %12)
  %14 = load %struct.chsc_sei_nt0_area*, %struct.chsc_sei_nt0_area** %2, align 8
  %15 = getelementptr inbounds %struct.chsc_sei_nt0_area, %struct.chsc_sei_nt0_area* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 4
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  br label %77

19:                                               ; preds = %1
  %20 = call i32 @chp_id_init(%struct.chp_id* %5)
  %21 = load %struct.chsc_sei_nt0_area*, %struct.chsc_sei_nt0_area** %2, align 8
  %22 = getelementptr inbounds %struct.chsc_sei_nt0_area, %struct.chsc_sei_nt0_area* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr inbounds %struct.chp_id, %struct.chp_id* %5, i32 0, i32 0
  store i32 %23, i32* %24, align 4
  %25 = getelementptr inbounds %struct.chp_id, %struct.chp_id* %5, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @chp_get_status(i32 %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %19
  br label %77

31:                                               ; preds = %19
  %32 = load i32, i32* %6, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.chp_id, %struct.chp_id* %5, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @chp_new(i32 %36)
  br label %50

38:                                               ; preds = %31
  %39 = getelementptr inbounds %struct.chp_id, %struct.chp_id* %5, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call %struct.channel_path* @chpid_to_chp(i32 %40)
  store %struct.channel_path* %41, %struct.channel_path** %3, align 8
  %42 = load %struct.channel_path*, %struct.channel_path** %3, align 8
  %43 = getelementptr inbounds %struct.channel_path, %struct.channel_path* %42, i32 0, i32 0
  %44 = call i32 @mutex_lock(i32* %43)
  %45 = load %struct.channel_path*, %struct.channel_path** %3, align 8
  %46 = call i32 @chp_update_desc(%struct.channel_path* %45)
  %47 = load %struct.channel_path*, %struct.channel_path** %3, align 8
  %48 = getelementptr inbounds %struct.channel_path, %struct.channel_path* %47, i32 0, i32 0
  %49 = call i32 @mutex_unlock(i32* %48)
  br label %50

50:                                               ; preds = %38, %34
  %51 = call i32 @memset(%struct.chp_link* %4, i32 0, i32 12)
  %52 = getelementptr inbounds %struct.chp_link, %struct.chp_link* %4, i32 0, i32 2
  %53 = bitcast %struct.chp_id* %52 to i8*
  %54 = bitcast %struct.chp_id* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %53, i8* align 4 %54, i64 4, i1 false)
  %55 = load %struct.chsc_sei_nt0_area*, %struct.chsc_sei_nt0_area** %2, align 8
  %56 = getelementptr inbounds %struct.chsc_sei_nt0_area, %struct.chsc_sei_nt0_area* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = and i32 %57, 192
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %75

60:                                               ; preds = %50
  %61 = load %struct.chsc_sei_nt0_area*, %struct.chsc_sei_nt0_area** %2, align 8
  %62 = getelementptr inbounds %struct.chsc_sei_nt0_area, %struct.chsc_sei_nt0_area* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = getelementptr inbounds %struct.chp_link, %struct.chp_link* %4, i32 0, i32 1
  store i32 %63, i32* %64, align 4
  %65 = load %struct.chsc_sei_nt0_area*, %struct.chsc_sei_nt0_area** %2, align 8
  %66 = getelementptr inbounds %struct.chsc_sei_nt0_area, %struct.chsc_sei_nt0_area* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = and i32 %67, 192
  %69 = icmp eq i32 %68, 192
  br i1 %69, label %70, label %72

70:                                               ; preds = %60
  %71 = getelementptr inbounds %struct.chp_link, %struct.chp_link* %4, i32 0, i32 0
  store i32 65535, i32* %71, align 4
  br label %74

72:                                               ; preds = %60
  %73 = getelementptr inbounds %struct.chp_link, %struct.chp_link* %4, i32 0, i32 0
  store i32 65280, i32* %73, align 4
  br label %74

74:                                               ; preds = %72, %70
  br label %75

75:                                               ; preds = %74, %50
  %76 = call i32 @s390_process_res_acc(%struct.chp_link* %4)
  br label %77

77:                                               ; preds = %75, %30, %18
  ret void
}

declare dso_local i32 @CIO_CRW_EVENT(i32, i8*, i32, i32) #1

declare dso_local i32 @chp_id_init(%struct.chp_id*) #1

declare dso_local i32 @chp_get_status(i32) #1

declare dso_local i32 @chp_new(i32) #1

declare dso_local %struct.channel_path* @chpid_to_chp(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @chp_update_desc(%struct.channel_path*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @memset(%struct.chp_link*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @s390_process_res_acc(%struct.chp_link*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

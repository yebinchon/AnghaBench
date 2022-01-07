; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_pr.c_target_scsi3_pr_reservation_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_pr.c_target_scsi3_pr_reservation_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_cmd = type { i32, %struct.se_session*, %struct.se_device* }
%struct.se_session = type { i64, i64 }
%struct.se_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64, i64, i32, i32 }

@TCM_RESERVATION_CONFLICT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.se_cmd*)* @target_scsi3_pr_reservation_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @target_scsi3_pr_reservation_check(%struct.se_cmd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.se_cmd*, align 8
  %4 = alloca %struct.se_device*, align 8
  %5 = alloca %struct.se_session*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.se_cmd* %0, %struct.se_cmd** %3, align 8
  %8 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %9 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %8, i32 0, i32 2
  %10 = load %struct.se_device*, %struct.se_device** %9, align 8
  store %struct.se_device* %10, %struct.se_device** %4, align 8
  %11 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %12 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %11, i32 0, i32 1
  %13 = load %struct.se_session*, %struct.se_session** %12, align 8
  store %struct.se_session* %13, %struct.se_session** %5, align 8
  store i32 0, i32* %7, align 4
  %14 = load %struct.se_device*, %struct.se_device** %4, align 8
  %15 = getelementptr inbounds %struct.se_device, %struct.se_device* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = icmp ne %struct.TYPE_2__* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %71

19:                                               ; preds = %1
  %20 = load %struct.se_device*, %struct.se_device** %4, align 8
  %21 = getelementptr inbounds %struct.se_device, %struct.se_device* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %6, align 4
  %25 = load %struct.se_device*, %struct.se_device** %4, align 8
  %26 = getelementptr inbounds %struct.se_device, %struct.se_device* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %31 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load %struct.se_device*, %struct.se_device** %4, align 8
  %33 = getelementptr inbounds %struct.se_device, %struct.se_device* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.se_session*, %struct.se_session** %5, align 8
  %38 = getelementptr inbounds %struct.se_session, %struct.se_session* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %36, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %19
  br label %62

42:                                               ; preds = %19
  %43 = load %struct.se_device*, %struct.se_device** %4, align 8
  %44 = getelementptr inbounds %struct.se_device, %struct.se_device* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %61

49:                                               ; preds = %42
  %50 = load %struct.se_device*, %struct.se_device** %4, align 8
  %51 = getelementptr inbounds %struct.se_device, %struct.se_device* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.se_session*, %struct.se_session** %5, align 8
  %56 = getelementptr inbounds %struct.se_session, %struct.se_session* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %54, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %49
  store i32 1, i32* %7, align 4
  br label %62

60:                                               ; preds = %49
  br label %61

61:                                               ; preds = %60, %42
  store i32 0, i32* %2, align 4
  br label %71

62:                                               ; preds = %59, %41
  %63 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* %7, align 4
  %66 = call i64 @core_scsi3_pr_seq_non_holder(%struct.se_cmd* %63, i32 %64, i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %62
  %69 = load i32, i32* @TCM_RESERVATION_CONFLICT, align 4
  store i32 %69, i32* %2, align 4
  br label %71

70:                                               ; preds = %62
  store i32 0, i32* %2, align 4
  br label %71

71:                                               ; preds = %70, %68, %61, %18
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local i64 @core_scsi3_pr_seq_non_holder(%struct.se_cmd*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

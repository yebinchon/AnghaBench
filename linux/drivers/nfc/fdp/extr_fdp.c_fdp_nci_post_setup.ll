; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/fdp/extr_fdp.c_fdp_nci_post_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/fdp/extr_fdp.c_fdp_nci_post_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nci_dev = type { i32 }
%struct.fdp_nci_info = type { i32, i32, i64*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.device }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"Vendor specific config set error %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Clock set error %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nci_dev*)* @fdp_nci_post_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fdp_nci_post_setup(%struct.nci_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nci_dev*, align 8
  %4 = alloca %struct.fdp_nci_info*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  store %struct.nci_dev* %0, %struct.nci_dev** %3, align 8
  %7 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %8 = call %struct.fdp_nci_info* @nci_get_drvdata(%struct.nci_dev* %7)
  store %struct.fdp_nci_info* %8, %struct.fdp_nci_info** %4, align 8
  %9 = load %struct.fdp_nci_info*, %struct.fdp_nci_info** %4, align 8
  %10 = getelementptr inbounds %struct.fdp_nci_info, %struct.fdp_nci_info* %9, i32 0, i32 3
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  store %struct.device* %14, %struct.device** %5, align 8
  %15 = load %struct.fdp_nci_info*, %struct.fdp_nci_info** %4, align 8
  %16 = getelementptr inbounds %struct.fdp_nci_info, %struct.fdp_nci_info* %15, i32 0, i32 2
  %17 = load i64*, i64** %16, align 8
  %18 = icmp ne i64* %17, null
  br i1 %18, label %19, label %46

19:                                               ; preds = %1
  %20 = load %struct.fdp_nci_info*, %struct.fdp_nci_info** %4, align 8
  %21 = getelementptr inbounds %struct.fdp_nci_info, %struct.fdp_nci_info* %20, i32 0, i32 2
  %22 = load i64*, i64** %21, align 8
  %23 = getelementptr inbounds i64, i64* %22, i64 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %46

26:                                               ; preds = %19
  %27 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %28 = load %struct.fdp_nci_info*, %struct.fdp_nci_info** %4, align 8
  %29 = getelementptr inbounds %struct.fdp_nci_info, %struct.fdp_nci_info* %28, i32 0, i32 2
  %30 = load i64*, i64** %29, align 8
  %31 = getelementptr inbounds i64, i64* %30, i64 3
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.fdp_nci_info*, %struct.fdp_nci_info** %4, align 8
  %34 = getelementptr inbounds %struct.fdp_nci_info, %struct.fdp_nci_info* %33, i32 0, i32 2
  %35 = load i64*, i64** %34, align 8
  %36 = getelementptr inbounds i64, i64* %35, i64 4
  %37 = call i32 @fdp_nci_set_production_data(%struct.nci_dev* %27, i64 %32, i64* %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %26
  %41 = load %struct.device*, %struct.device** %5, align 8
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @nfc_err(%struct.device* %41, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %42)
  %44 = load i32, i32* %6, align 4
  store i32 %44, i32* %2, align 4
  br label %72

45:                                               ; preds = %26
  br label %46

46:                                               ; preds = %45, %19, %1
  %47 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %48 = load %struct.fdp_nci_info*, %struct.fdp_nci_info** %4, align 8
  %49 = getelementptr inbounds %struct.fdp_nci_info, %struct.fdp_nci_info* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.fdp_nci_info*, %struct.fdp_nci_info** %4, align 8
  %52 = getelementptr inbounds %struct.fdp_nci_info, %struct.fdp_nci_info* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @fdp_nci_set_clock(%struct.nci_dev* %47, i32 %50, i32 %53)
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* %6, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %46
  %58 = load %struct.device*, %struct.device** %5, align 8
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @nfc_err(%struct.device* %58, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %59)
  %61 = load i32, i32* %6, align 4
  store i32 %61, i32* %2, align 4
  br label %72

62:                                               ; preds = %46
  %63 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %64 = call i32 @nci_core_reset(%struct.nci_dev* %63)
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* %6, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %62
  %68 = load i32, i32* %6, align 4
  store i32 %68, i32* %2, align 4
  br label %72

69:                                               ; preds = %62
  %70 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %71 = call i32 @nci_core_init(%struct.nci_dev* %70)
  store i32 %71, i32* %2, align 4
  br label %72

72:                                               ; preds = %69, %67, %57, %40
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local %struct.fdp_nci_info* @nci_get_drvdata(%struct.nci_dev*) #1

declare dso_local i32 @fdp_nci_set_production_data(%struct.nci_dev*, i64, i64*) #1

declare dso_local i32 @nfc_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @fdp_nci_set_clock(%struct.nci_dev*, i32, i32) #1

declare dso_local i32 @nci_core_reset(%struct.nci_dev*) #1

declare dso_local i32 @nci_core_init(%struct.nci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

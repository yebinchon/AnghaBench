; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/fdp/extr_fdp.c_fdp_nci_patch_ram.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/fdp/extr_fdp.c_fdp_nci_patch_ram.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nci_dev = type { i32 }
%struct.fdp_nci_info = type { i64, i64, i32, i32, i32, i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.device }
%struct.device = type { i32 }

@NCI_PATCH_TYPE_RAM = common dso_local global i32 0, align 4
@FDP_FW_UPDATE_SLEEP = common dso_local global i32 0, align 4
@NCI_PATCH_TYPE_EOT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"RAM patch error 0x%x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nci_dev*)* @fdp_nci_patch_ram to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fdp_nci_patch_ram(%struct.nci_dev* %0) #0 {
  %2 = alloca %struct.nci_dev*, align 8
  %3 = alloca %struct.fdp_nci_info*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.nci_dev* %0, %struct.nci_dev** %2, align 8
  %7 = load %struct.nci_dev*, %struct.nci_dev** %2, align 8
  %8 = call %struct.fdp_nci_info* @nci_get_drvdata(%struct.nci_dev* %7)
  store %struct.fdp_nci_info* %8, %struct.fdp_nci_info** %3, align 8
  %9 = load %struct.fdp_nci_info*, %struct.fdp_nci_info** %3, align 8
  %10 = getelementptr inbounds %struct.fdp_nci_info, %struct.fdp_nci_info* %9, i32 0, i32 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  store %struct.device* %14, %struct.device** %4, align 8
  store i32 0, i32* %6, align 4
  %15 = load %struct.fdp_nci_info*, %struct.fdp_nci_info** %3, align 8
  %16 = getelementptr inbounds %struct.fdp_nci_info, %struct.fdp_nci_info* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.fdp_nci_info*, %struct.fdp_nci_info** %3, align 8
  %19 = getelementptr inbounds %struct.fdp_nci_info, %struct.fdp_nci_info* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp sge i64 %17, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  br label %109

23:                                               ; preds = %1
  %24 = load %struct.fdp_nci_info*, %struct.fdp_nci_info** %3, align 8
  %25 = getelementptr inbounds %struct.fdp_nci_info, %struct.fdp_nci_info* %24, i32 0, i32 2
  store i32 0, i32* %25, align 8
  %26 = load %struct.fdp_nci_info*, %struct.fdp_nci_info** %3, align 8
  %27 = getelementptr inbounds %struct.fdp_nci_info, %struct.fdp_nci_info* %26, i32 0, i32 3
  store i32 0, i32* %27, align 4
  %28 = load %struct.fdp_nci_info*, %struct.fdp_nci_info** %3, align 8
  %29 = getelementptr inbounds %struct.fdp_nci_info, %struct.fdp_nci_info* %28, i32 0, i32 4
  store i32 0, i32* %29, align 8
  %30 = load %struct.nci_dev*, %struct.nci_dev** %2, align 8
  %31 = load i32, i32* @NCI_PATCH_TYPE_RAM, align 4
  %32 = call i32 @fdp_nci_patch_cmd(%struct.nci_dev* %30, i32 %31)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %23
  br label %109

36:                                               ; preds = %23
  %37 = load %struct.nci_dev*, %struct.nci_dev** %2, align 8
  %38 = call i32 @fdp_nci_create_conn(%struct.nci_dev* %37)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = load i32, i32* %5, align 4
  store i32 %42, i32* %6, align 4
  br label %109

43:                                               ; preds = %36
  %44 = load %struct.nci_dev*, %struct.nci_dev** %2, align 8
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @NCI_PATCH_TYPE_RAM, align 4
  %47 = call i32 @fdp_nci_send_patch(%struct.nci_dev* %44, i32 %45, i32 %46)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %43
  br label %109

51:                                               ; preds = %43
  %52 = load %struct.fdp_nci_info*, %struct.fdp_nci_info** %3, align 8
  %53 = getelementptr inbounds %struct.fdp_nci_info, %struct.fdp_nci_info* %52, i32 0, i32 6
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.fdp_nci_info*, %struct.fdp_nci_info** %3, align 8
  %56 = getelementptr inbounds %struct.fdp_nci_info, %struct.fdp_nci_info* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = icmp eq i32 %57, 1
  %59 = zext i1 %58 to i32
  %60 = call i32 @wait_event_interruptible(i32 %54, i32 %59)
  %61 = load i32, i32* @FDP_FW_UPDATE_SLEEP, align 4
  %62 = call i32 @msleep(i32 %61)
  %63 = load %struct.fdp_nci_info*, %struct.fdp_nci_info** %3, align 8
  %64 = getelementptr inbounds %struct.fdp_nci_info, %struct.fdp_nci_info* %63, i32 0, i32 7
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @nci_core_conn_close(i32 %65, i32 %66)
  store i32 %67, i32* %6, align 4
  %68 = load i32, i32* %6, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %51
  br label %109

71:                                               ; preds = %51
  %72 = load %struct.nci_dev*, %struct.nci_dev** %2, align 8
  %73 = load i32, i32* @NCI_PATCH_TYPE_EOT, align 4
  %74 = call i32 @fdp_nci_patch_cmd(%struct.nci_dev* %72, i32 %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %71
  %77 = load %struct.device*, %struct.device** %4, align 8
  %78 = load i32, i32* %6, align 4
  %79 = call i32 @nfc_err(%struct.device* %77, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %78)
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %6, align 4
  br label %109

82:                                               ; preds = %71
  %83 = load %struct.fdp_nci_info*, %struct.fdp_nci_info** %3, align 8
  %84 = getelementptr inbounds %struct.fdp_nci_info, %struct.fdp_nci_info* %83, i32 0, i32 6
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.fdp_nci_info*, %struct.fdp_nci_info** %3, align 8
  %87 = getelementptr inbounds %struct.fdp_nci_info, %struct.fdp_nci_info* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @wait_event_interruptible(i32 %85, i32 %88)
  %90 = load %struct.fdp_nci_info*, %struct.fdp_nci_info** %3, align 8
  %91 = getelementptr inbounds %struct.fdp_nci_info, %struct.fdp_nci_info* %90, i32 0, i32 5
  %92 = load i32, i32* %91, align 4
  store i32 %92, i32* %6, align 4
  %93 = load i32, i32* %6, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %82
  %96 = load %struct.device*, %struct.device** %4, align 8
  %97 = load i32, i32* %6, align 4
  %98 = call i32 @nfc_err(%struct.device* %96, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %97)
  %99 = load i32, i32* @EINVAL, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %6, align 4
  br label %109

101:                                              ; preds = %82
  %102 = load %struct.fdp_nci_info*, %struct.fdp_nci_info** %3, align 8
  %103 = getelementptr inbounds %struct.fdp_nci_info, %struct.fdp_nci_info* %102, i32 0, i32 6
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.fdp_nci_info*, %struct.fdp_nci_info** %3, align 8
  %106 = getelementptr inbounds %struct.fdp_nci_info, %struct.fdp_nci_info* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @wait_event_interruptible(i32 %104, i32 %107)
  br label %109

109:                                              ; preds = %101, %95, %76, %70, %50, %41, %35, %22
  %110 = load i32, i32* %6, align 4
  ret i32 %110
}

declare dso_local %struct.fdp_nci_info* @nci_get_drvdata(%struct.nci_dev*) #1

declare dso_local i32 @fdp_nci_patch_cmd(%struct.nci_dev*, i32) #1

declare dso_local i32 @fdp_nci_create_conn(%struct.nci_dev*) #1

declare dso_local i32 @fdp_nci_send_patch(%struct.nci_dev*, i32, i32) #1

declare dso_local i32 @wait_event_interruptible(i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @nci_core_conn_close(i32, i32) #1

declare dso_local i32 @nfc_err(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

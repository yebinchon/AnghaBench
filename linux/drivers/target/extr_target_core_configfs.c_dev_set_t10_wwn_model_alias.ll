; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_configfs.c_dev_set_t10_wwn_model_alias.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_configfs.c_dev_set_t10_wwn_model_alias.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_device = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@INQUIRY_MODEL_LEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [89 x i8] c"dev[%p]: Backstore name '%s' is too long for INQUIRY_MODEL, truncating to 15 characters\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.se_device*)* @dev_set_t10_wwn_model_alias to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dev_set_t10_wwn_model_alias(%struct.se_device* %0) #0 {
  %2 = alloca %struct.se_device*, align 8
  %3 = alloca i8*, align 8
  store %struct.se_device* %0, %struct.se_device** %2, align 8
  %4 = load %struct.se_device*, %struct.se_device** %2, align 8
  %5 = getelementptr inbounds %struct.se_device, %struct.se_device* %4, i32 0, i32 1
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = call i8* @config_item_name(i32* %6)
  store i8* %7, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = call i64 @strlen(i8* %8)
  %10 = load i64, i64* @INQUIRY_MODEL_LEN, align 8
  %11 = icmp sge i64 %9, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load %struct.se_device*, %struct.se_device** %2, align 8
  %14 = load i8*, i8** %3, align 8
  %15 = call i32 @pr_warn(i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str, i64 0, i64 0), %struct.se_device* %13, i8* %14)
  br label %16

16:                                               ; preds = %12, %1
  %17 = load %struct.se_device*, %struct.se_device** %2, align 8
  %18 = getelementptr inbounds %struct.se_device, %struct.se_device* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i8*, i8** %3, align 8
  %22 = load i64, i64* @INQUIRY_MODEL_LEN, align 8
  %23 = call i32 @strlcpy(i32 %20, i8* %21, i64 %22)
  ret void
}

declare dso_local i8* @config_item_name(i32*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @pr_warn(i8*, %struct.se_device*, i8*) #1

declare dso_local i32 @strlcpy(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

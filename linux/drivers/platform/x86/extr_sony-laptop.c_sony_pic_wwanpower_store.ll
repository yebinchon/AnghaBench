; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_sony-laptop.c_sony_pic_wwanpower_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_sony-laptop.c_sony_pic_wwanpower_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.device = type { i32 }
%struct.device_attribute = type { i32 }

@EINVAL = common dso_local global i64 0, align 8
@spic_dev = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @sony_pic_wwanpower_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @sony_pic_wwanpower_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load i64, i64* %9, align 8
  %12 = icmp ugt i64 %11, 31
  br i1 %12, label %13, label %16

13:                                               ; preds = %4
  %14 = load i64, i64* @EINVAL, align 8
  %15 = sub i64 0, %14
  store i64 %15, i64* %5, align 8
  br label %29

16:                                               ; preds = %4
  %17 = load i8*, i8** %8, align 8
  %18 = call i64 @kstrtoul(i8* %17, i32 10, i64* %10)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = load i64, i64* @EINVAL, align 8
  %22 = sub i64 0, %21
  store i64 %22, i64* %5, align 8
  br label %29

23:                                               ; preds = %16
  %24 = call i32 @mutex_lock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @spic_dev, i32 0, i32 0))
  %25 = load i64, i64* %10, align 8
  %26 = call i32 @__sony_pic_set_wwanpower(i64 %25)
  %27 = call i32 @mutex_unlock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @spic_dev, i32 0, i32 0))
  %28 = load i64, i64* %9, align 8
  store i64 %28, i64* %5, align 8
  br label %29

29:                                               ; preds = %23, %20, %13
  %30 = load i64, i64* %5, align 8
  ret i64 %30
}

declare dso_local i64 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @__sony_pic_set_wwanpower(i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

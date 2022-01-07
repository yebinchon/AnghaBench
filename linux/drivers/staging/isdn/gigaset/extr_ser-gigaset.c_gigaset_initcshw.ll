; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/isdn/gigaset/extr_ser-gigaset.c_gigaset_initcshw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/isdn/gigaset/extr_ser-gigaset.c_gigaset_initcshw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cardstate = type { i32, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { %struct.ser_cardstate* }
%struct.ser_cardstate = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"out of memory\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@GIGASET_MODULENAME = common dso_local global i32 0, align 4
@gigaset_device_release = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"error %d registering platform device\0A\00", align 1
@gigaset_modem_fill = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cardstate*)* @gigaset_initcshw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gigaset_initcshw(%struct.cardstate* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cardstate*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ser_cardstate*, align 8
  store %struct.cardstate* %0, %struct.cardstate** %3, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.ser_cardstate* @kzalloc(i32 12, i32 %6)
  store %struct.ser_cardstate* %7, %struct.ser_cardstate** %5, align 8
  %8 = load %struct.ser_cardstate*, %struct.ser_cardstate** %5, align 8
  %9 = icmp ne %struct.ser_cardstate* %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %1
  %11 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %70

14:                                               ; preds = %1
  %15 = load %struct.ser_cardstate*, %struct.ser_cardstate** %5, align 8
  %16 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %17 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  store %struct.ser_cardstate* %15, %struct.ser_cardstate** %18, align 8
  %19 = load i32, i32* @GIGASET_MODULENAME, align 4
  %20 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %21 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load %struct.ser_cardstate*, %struct.ser_cardstate** %22, align 8
  %24 = getelementptr inbounds %struct.ser_cardstate, %struct.ser_cardstate* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 2
  store i32 %19, i32* %25, align 4
  %26 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %27 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %30 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load %struct.ser_cardstate*, %struct.ser_cardstate** %31, align 8
  %33 = getelementptr inbounds %struct.ser_cardstate, %struct.ser_cardstate* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  store i32 %28, i32* %34, align 4
  %35 = load i32, i32* @gigaset_device_release, align 4
  %36 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %37 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load %struct.ser_cardstate*, %struct.ser_cardstate** %38, align 8
  %40 = getelementptr inbounds %struct.ser_cardstate, %struct.ser_cardstate* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  store i32 %35, i32* %42, align 4
  %43 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %44 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load %struct.ser_cardstate*, %struct.ser_cardstate** %45, align 8
  %47 = getelementptr inbounds %struct.ser_cardstate, %struct.ser_cardstate* %46, i32 0, i32 0
  %48 = call i32 @platform_device_register(%struct.TYPE_6__* %47)
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* %4, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %63

51:                                               ; preds = %14
  %52 = load i32, i32* %4, align 4
  %53 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  %54 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %55 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load %struct.ser_cardstate*, %struct.ser_cardstate** %56, align 8
  %58 = call i32 @kfree(%struct.ser_cardstate* %57)
  %59 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %60 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  store %struct.ser_cardstate* null, %struct.ser_cardstate** %61, align 8
  %62 = load i32, i32* %4, align 4
  store i32 %62, i32* %2, align 4
  br label %70

63:                                               ; preds = %14
  %64 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %65 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %64, i32 0, i32 0
  %66 = load i32, i32* @gigaset_modem_fill, align 4
  %67 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %68 = ptrtoint %struct.cardstate* %67 to i64
  %69 = call i32 @tasklet_init(i32* %65, i32 %66, i64 %68)
  store i32 0, i32* %2, align 4
  br label %70

70:                                               ; preds = %63, %51, %10
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local %struct.ser_cardstate* @kzalloc(i32, i32) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @platform_device_register(%struct.TYPE_6__*) #1

declare dso_local i32 @kfree(%struct.ser_cardstate*) #1

declare dso_local i32 @tasklet_init(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

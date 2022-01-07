; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_diag.c_mdsk_init_io.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_diag.c_mdsk_init_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_device = type { %struct.dasd_diag_private* }
%struct.dasd_diag_private = type { %struct.TYPE_2__, %struct.dasd_diag_init_io }
%struct.TYPE_2__ = type { i32 }
%struct.dasd_diag_init_io = type { i32, i32, i32, i32, i32 }

@DASD_DIAG_FLAGA_DEFAULT = common dso_local global i32 0, align 4
@INIT_BIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dasd_device*, i32, i32, i32*)* @mdsk_init_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mdsk_init_io(%struct.dasd_device* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.dasd_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.dasd_diag_private*, align 8
  %10 = alloca %struct.dasd_diag_init_io*, align 8
  %11 = alloca i32, align 4
  store %struct.dasd_device* %0, %struct.dasd_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %12 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %13 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %12, i32 0, i32 0
  %14 = load %struct.dasd_diag_private*, %struct.dasd_diag_private** %13, align 8
  store %struct.dasd_diag_private* %14, %struct.dasd_diag_private** %9, align 8
  %15 = load %struct.dasd_diag_private*, %struct.dasd_diag_private** %9, align 8
  %16 = getelementptr inbounds %struct.dasd_diag_private, %struct.dasd_diag_private* %15, i32 0, i32 1
  store %struct.dasd_diag_init_io* %16, %struct.dasd_diag_init_io** %10, align 8
  %17 = load %struct.dasd_diag_init_io*, %struct.dasd_diag_init_io** %10, align 8
  %18 = call i32 @memset(%struct.dasd_diag_init_io* %17, i32 0, i32 20)
  %19 = load %struct.dasd_diag_private*, %struct.dasd_diag_private** %9, align 8
  %20 = getelementptr inbounds %struct.dasd_diag_private, %struct.dasd_diag_private* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.dasd_diag_init_io*, %struct.dasd_diag_init_io** %10, align 8
  %24 = getelementptr inbounds %struct.dasd_diag_init_io, %struct.dasd_diag_init_io* %23, i32 0, i32 4
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.dasd_diag_init_io*, %struct.dasd_diag_init_io** %10, align 8
  %27 = getelementptr inbounds %struct.dasd_diag_init_io, %struct.dasd_diag_init_io* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load %struct.dasd_diag_init_io*, %struct.dasd_diag_init_io** %10, align 8
  %30 = getelementptr inbounds %struct.dasd_diag_init_io, %struct.dasd_diag_init_io* %29, i32 0, i32 3
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* @DASD_DIAG_FLAGA_DEFAULT, align 4
  %32 = load %struct.dasd_diag_init_io*, %struct.dasd_diag_init_io** %10, align 8
  %33 = getelementptr inbounds %struct.dasd_diag_init_io, %struct.dasd_diag_init_io* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 4
  %34 = load %struct.dasd_diag_init_io*, %struct.dasd_diag_init_io** %10, align 8
  %35 = load i32, i32* @INIT_BIO, align 4
  %36 = call i32 @dia250(%struct.dasd_diag_init_io* %34, i32 %35)
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %11, align 4
  %38 = and i32 %37, 3
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %4
  %41 = load i32*, i32** %8, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %48

43:                                               ; preds = %40
  %44 = load %struct.dasd_diag_init_io*, %struct.dasd_diag_init_io** %10, align 8
  %45 = getelementptr inbounds %struct.dasd_diag_init_io, %struct.dasd_diag_init_io* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32*, i32** %8, align 8
  store i32 %46, i32* %47, align 4
  br label %48

48:                                               ; preds = %43, %40, %4
  %49 = load i32, i32* %11, align 4
  ret i32 %49
}

declare dso_local i32 @memset(%struct.dasd_diag_init_io*, i32, i32) #1

declare dso_local i32 @dia250(%struct.dasd_diag_init_io*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

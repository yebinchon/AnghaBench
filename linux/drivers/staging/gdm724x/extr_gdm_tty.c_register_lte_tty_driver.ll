; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/gdm724x/extr_gdm_tty.c_register_lte_tty_driver.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/gdm724x/extr_gdm_tty.c_register_lte_tty_driver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.tty_driver = type { i32, %struct.TYPE_2__, i32, i32, i32, i32, i32, i32 }

@TTY_MAX_COUNT = common dso_local global i32 0, align 4
@GDM_TTY_MINOR = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@DRIVER_STRING = common dso_local global i32* null, align 8
@DEVICE_STRING = common dso_local global i32* null, align 8
@GDM_TTY_MAJOR = common dso_local global i32 0, align 4
@TTY_DRIVER_TYPE_SERIAL = common dso_local global i32 0, align 4
@SERIAL_TYPE_NORMAL = common dso_local global i32 0, align 4
@TTY_DRIVER_REAL_RAW = common dso_local global i32 0, align 4
@TTY_DRIVER_DYNAMIC_DEV = common dso_local global i32 0, align 4
@tty_std_termios = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@B9600 = common dso_local global i32 0, align 4
@CS8 = common dso_local global i32 0, align 4
@HUPCL = common dso_local global i32 0, align 4
@CLOCAL = common dso_local global i32 0, align 4
@ISIG = common dso_local global i32 0, align 4
@ICANON = common dso_local global i32 0, align 4
@IEXTEN = common dso_local global i32 0, align 4
@gdm_tty_ops = common dso_local global i32 0, align 4
@gdm_driver = common dso_local global %struct.tty_driver** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @register_lte_tty_driver() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.tty_driver*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %86, %0
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @TTY_MAX_COUNT, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %89

9:                                                ; preds = %5
  %10 = load i32, i32* @GDM_TTY_MINOR, align 4
  %11 = call %struct.tty_driver* @alloc_tty_driver(i32 %10)
  store %struct.tty_driver* %11, %struct.tty_driver** %2, align 8
  %12 = load %struct.tty_driver*, %struct.tty_driver** %2, align 8
  %13 = icmp ne %struct.tty_driver* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %9
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %1, align 4
  br label %91

17:                                               ; preds = %9
  %18 = load i32, i32* @THIS_MODULE, align 4
  %19 = load %struct.tty_driver*, %struct.tty_driver** %2, align 8
  %20 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %19, i32 0, i32 7
  store i32 %18, i32* %20, align 4
  %21 = load i32*, i32** @DRIVER_STRING, align 8
  %22 = load i32, i32* %3, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.tty_driver*, %struct.tty_driver** %2, align 8
  %27 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %26, i32 0, i32 6
  store i32 %25, i32* %27, align 4
  %28 = load i32*, i32** @DEVICE_STRING, align 8
  %29 = load i32, i32* %3, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.tty_driver*, %struct.tty_driver** %2, align 8
  %34 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %33, i32 0, i32 5
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* @GDM_TTY_MAJOR, align 4
  %36 = load %struct.tty_driver*, %struct.tty_driver** %2, align 8
  %37 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %36, i32 0, i32 4
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* @TTY_DRIVER_TYPE_SERIAL, align 4
  %39 = load %struct.tty_driver*, %struct.tty_driver** %2, align 8
  %40 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %39, i32 0, i32 3
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* @SERIAL_TYPE_NORMAL, align 4
  %42 = load %struct.tty_driver*, %struct.tty_driver** %2, align 8
  %43 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* @TTY_DRIVER_REAL_RAW, align 4
  %45 = load i32, i32* @TTY_DRIVER_DYNAMIC_DEV, align 4
  %46 = or i32 %44, %45
  %47 = load %struct.tty_driver*, %struct.tty_driver** %2, align 8
  %48 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  %49 = load %struct.tty_driver*, %struct.tty_driver** %2, align 8
  %50 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %49, i32 0, i32 1
  %51 = bitcast %struct.TYPE_2__* %50 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %51, i8* align 4 bitcast (%struct.TYPE_2__* @tty_std_termios to i8*), i64 8, i1 false)
  %52 = load i32, i32* @B9600, align 4
  %53 = load i32, i32* @CS8, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @HUPCL, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @CLOCAL, align 4
  %58 = or i32 %56, %57
  %59 = load %struct.tty_driver*, %struct.tty_driver** %2, align 8
  %60 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  store i32 %58, i32* %61, align 4
  %62 = load i32, i32* @ISIG, align 4
  %63 = load i32, i32* @ICANON, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* @IEXTEN, align 4
  %66 = or i32 %64, %65
  %67 = load %struct.tty_driver*, %struct.tty_driver** %2, align 8
  %68 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  store i32 %66, i32* %69, align 4
  %70 = load %struct.tty_driver*, %struct.tty_driver** %2, align 8
  %71 = call i32 @tty_set_operations(%struct.tty_driver* %70, i32* @gdm_tty_ops)
  %72 = load %struct.tty_driver*, %struct.tty_driver** %2, align 8
  %73 = call i32 @tty_register_driver(%struct.tty_driver* %72)
  store i32 %73, i32* %4, align 4
  %74 = load i32, i32* %4, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %17
  %77 = load %struct.tty_driver*, %struct.tty_driver** %2, align 8
  %78 = call i32 @put_tty_driver(%struct.tty_driver* %77)
  %79 = load i32, i32* %4, align 4
  store i32 %79, i32* %1, align 4
  br label %91

80:                                               ; preds = %17
  %81 = load %struct.tty_driver*, %struct.tty_driver** %2, align 8
  %82 = load %struct.tty_driver**, %struct.tty_driver*** @gdm_driver, align 8
  %83 = load i32, i32* %3, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.tty_driver*, %struct.tty_driver** %82, i64 %84
  store %struct.tty_driver* %81, %struct.tty_driver** %85, align 8
  br label %86

86:                                               ; preds = %80
  %87 = load i32, i32* %3, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %3, align 4
  br label %5

89:                                               ; preds = %5
  %90 = load i32, i32* %4, align 4
  store i32 %90, i32* %1, align 4
  br label %91

91:                                               ; preds = %89, %76, %14
  %92 = load i32, i32* %1, align 4
  ret i32 %92
}

declare dso_local %struct.tty_driver* @alloc_tty_driver(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @tty_set_operations(%struct.tty_driver*, i32*) #1

declare dso_local i32 @tty_register_driver(%struct.tty_driver*) #1

declare dso_local i32 @put_tty_driver(%struct.tty_driver*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

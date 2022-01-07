; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_uart.c_gb_tty_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_uart.c_gb_tty_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i8*, i32, %struct.TYPE_8__, i32, i32, i64, i64, i32 }
%struct.TYPE_8__ = type { i32 }

@GB_NUM_MINORS = common dso_local global i32 0, align 4
@gb_tty_driver = common dso_local global %struct.TYPE_9__* null, align 8
@.str = private unnamed_addr constant [29 x i8] c"Can not allocate tty driver\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"gb\00", align 1
@GB_NAME = common dso_local global i32 0, align 4
@TTY_DRIVER_TYPE_SERIAL = common dso_local global i32 0, align 4
@SERIAL_TYPE_NORMAL = common dso_local global i32 0, align 4
@TTY_DRIVER_REAL_RAW = common dso_local global i32 0, align 4
@TTY_DRIVER_DYNAMIC_DEV = common dso_local global i32 0, align 4
@tty_std_termios = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@B9600 = common dso_local global i32 0, align 4
@CS8 = common dso_local global i32 0, align 4
@CREAD = common dso_local global i32 0, align 4
@HUPCL = common dso_local global i32 0, align 4
@CLOCAL = common dso_local global i32 0, align 4
@gb_ops = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"Can not register tty driver: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @gb_tty_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gb_tty_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  %3 = load i32, i32* @GB_NUM_MINORS, align 4
  %4 = call %struct.TYPE_9__* @tty_alloc_driver(i32 %3, i32 0)
  store %struct.TYPE_9__* %4, %struct.TYPE_9__** @gb_tty_driver, align 8
  %5 = load %struct.TYPE_9__*, %struct.TYPE_9__** @gb_tty_driver, align 8
  %6 = call i64 @IS_ERR(%struct.TYPE_9__* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %0
  %9 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %61

12:                                               ; preds = %0
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** @gb_tty_driver, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8** %14, align 8
  %15 = load i32, i32* @GB_NAME, align 4
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** @gb_tty_driver, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 7
  store i32 %15, i32* %17, align 8
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** @gb_tty_driver, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 6
  store i64 0, i64* %19, align 8
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** @gb_tty_driver, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 5
  store i64 0, i64* %21, align 8
  %22 = load i32, i32* @TTY_DRIVER_TYPE_SERIAL, align 4
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** @gb_tty_driver, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 4
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* @SERIAL_TYPE_NORMAL, align 4
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** @gb_tty_driver, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 3
  store i32 %25, i32* %27, align 8
  %28 = load i32, i32* @TTY_DRIVER_REAL_RAW, align 4
  %29 = load i32, i32* @TTY_DRIVER_DYNAMIC_DEV, align 4
  %30 = or i32 %28, %29
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** @gb_tty_driver, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 8
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** @gb_tty_driver, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 2
  %35 = bitcast %struct.TYPE_8__* %34 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %35, i8* align 4 bitcast (%struct.TYPE_8__* @tty_std_termios to i8*), i64 4, i1 false)
  %36 = load i32, i32* @B9600, align 4
  %37 = load i32, i32* @CS8, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @CREAD, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @HUPCL, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @CLOCAL, align 4
  %44 = or i32 %42, %43
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** @gb_tty_driver, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  store i32 %44, i32* %47, align 4
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** @gb_tty_driver, align 8
  %49 = call i32 @tty_set_operations(%struct.TYPE_9__* %48, i32* @gb_ops)
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** @gb_tty_driver, align 8
  %51 = call i32 @tty_register_driver(%struct.TYPE_9__* %50)
  store i32 %51, i32* %2, align 4
  %52 = load i32, i32* %2, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %12
  %55 = load i32, i32* %2, align 4
  %56 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %55)
  br label %58

57:                                               ; preds = %12
  store i32 0, i32* %1, align 4
  br label %63

58:                                               ; preds = %54
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** @gb_tty_driver, align 8
  %60 = call i32 @put_tty_driver(%struct.TYPE_9__* %59)
  br label %61

61:                                               ; preds = %58, %8
  %62 = load i32, i32* %2, align 4
  store i32 %62, i32* %1, align 4
  br label %63

63:                                               ; preds = %61, %57
  %64 = load i32, i32* %1, align 4
  ret i32 %64
}

declare dso_local %struct.TYPE_9__* @tty_alloc_driver(i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_9__*) #1

declare dso_local i32 @pr_err(i8*, ...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @tty_set_operations(%struct.TYPE_9__*, i32*) #1

declare dso_local i32 @tty_register_driver(%struct.TYPE_9__*) #1

declare dso_local i32 @put_tty_driver(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

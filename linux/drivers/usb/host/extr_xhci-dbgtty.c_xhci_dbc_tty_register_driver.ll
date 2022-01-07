; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-dbgtty.c_xhci_dbc_tty_register_driver.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-dbgtty.c_xhci_dbc_tty_register_driver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i8*, i8*, i32*, %struct.TYPE_9__, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.xhci_hcd = type { %struct.xhci_dbc* }
%struct.xhci_dbc = type { i32 }

@TTY_DRIVER_REAL_RAW = common dso_local global i32 0, align 4
@TTY_DRIVER_DYNAMIC_DEV = common dso_local global i32 0, align 4
@dbc_tty_driver = common dso_local global %struct.TYPE_10__* null, align 8
@.str = private unnamed_addr constant [11 x i8] c"dbc_serial\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"ttyDBC\00", align 1
@TTY_DRIVER_TYPE_SERIAL = common dso_local global i32 0, align 4
@SERIAL_TYPE_NORMAL = common dso_local global i32 0, align 4
@tty_std_termios = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@B9600 = common dso_local global i32 0, align 4
@CS8 = common dso_local global i32 0, align 4
@CREAD = common dso_local global i32 0, align 4
@HUPCL = common dso_local global i32 0, align 4
@CLOCAL = common dso_local global i32 0, align 4
@dbc_tty_ops = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"can't register dbc tty driver, err %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xhci_dbc_tty_register_driver(%struct.xhci_hcd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xhci_hcd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.xhci_dbc*, align 8
  store %struct.xhci_hcd* %0, %struct.xhci_hcd** %3, align 8
  %6 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %7 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %6, i32 0, i32 0
  %8 = load %struct.xhci_dbc*, %struct.xhci_dbc** %7, align 8
  store %struct.xhci_dbc* %8, %struct.xhci_dbc** %5, align 8
  %9 = load i32, i32* @TTY_DRIVER_REAL_RAW, align 4
  %10 = load i32, i32* @TTY_DRIVER_DYNAMIC_DEV, align 4
  %11 = or i32 %9, %10
  %12 = call %struct.TYPE_10__* @tty_alloc_driver(i32 1, i32 %11)
  store %struct.TYPE_10__* %12, %struct.TYPE_10__** @dbc_tty_driver, align 8
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** @dbc_tty_driver, align 8
  %14 = call i64 @IS_ERR(%struct.TYPE_10__* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** @dbc_tty_driver, align 8
  %18 = call i32 @PTR_ERR(%struct.TYPE_10__* %17)
  store i32 %18, i32* %4, align 4
  store %struct.TYPE_10__* null, %struct.TYPE_10__** @dbc_tty_driver, align 8
  %19 = load i32, i32* %4, align 4
  store i32 %19, i32* %2, align 4
  br label %70

20:                                               ; preds = %1
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** @dbc_tty_driver, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8** %22, align 8
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** @dbc_tty_driver, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %24, align 8
  %25 = load i32, i32* @TTY_DRIVER_TYPE_SERIAL, align 4
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** @dbc_tty_driver, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 5
  store i32 %25, i32* %27, align 8
  %28 = load i32, i32* @SERIAL_TYPE_NORMAL, align 4
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** @dbc_tty_driver, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 4
  store i32 %28, i32* %30, align 4
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** @dbc_tty_driver, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 3
  %33 = bitcast %struct.TYPE_9__* %32 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %33, i8* align 4 bitcast (%struct.TYPE_9__* @tty_std_termios to i8*), i64 12, i1 false)
  %34 = load i32, i32* @B9600, align 4
  %35 = load i32, i32* @CS8, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @CREAD, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @HUPCL, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @CLOCAL, align 4
  %42 = or i32 %40, %41
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** @dbc_tty_driver, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  store i32 %42, i32* %45, align 8
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** @dbc_tty_driver, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 1
  store i32 9600, i32* %48, align 4
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** @dbc_tty_driver, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 3
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 2
  store i32 9600, i32* %51, align 8
  %52 = load %struct.xhci_dbc*, %struct.xhci_dbc** %5, align 8
  %53 = getelementptr inbounds %struct.xhci_dbc, %struct.xhci_dbc* %52, i32 0, i32 0
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** @dbc_tty_driver, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 2
  store i32* %53, i32** %55, align 8
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** @dbc_tty_driver, align 8
  %57 = call i32 @tty_set_operations(%struct.TYPE_10__* %56, i32* @dbc_tty_ops)
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** @dbc_tty_driver, align 8
  %59 = call i32 @tty_register_driver(%struct.TYPE_10__* %58)
  store i32 %59, i32* %4, align 4
  %60 = load i32, i32* %4, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %20
  %63 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %64 = load i32, i32* %4, align 4
  %65 = call i32 @xhci_err(%struct.xhci_hcd* %63, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %64)
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** @dbc_tty_driver, align 8
  %67 = call i32 @put_tty_driver(%struct.TYPE_10__* %66)
  store %struct.TYPE_10__* null, %struct.TYPE_10__** @dbc_tty_driver, align 8
  br label %68

68:                                               ; preds = %62, %20
  %69 = load i32, i32* %4, align 4
  store i32 %69, i32* %2, align 4
  br label %70

70:                                               ; preds = %68, %16
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local %struct.TYPE_10__* @tty_alloc_driver(i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_10__*) #1

declare dso_local i32 @PTR_ERR(%struct.TYPE_10__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @tty_set_operations(%struct.TYPE_10__*, i32*) #1

declare dso_local i32 @tty_register_driver(%struct.TYPE_10__*) #1

declare dso_local i32 @xhci_err(%struct.xhci_hcd*, i8*, i32) #1

declare dso_local i32 @put_tty_driver(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

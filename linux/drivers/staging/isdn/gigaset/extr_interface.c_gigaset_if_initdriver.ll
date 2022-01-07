; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/isdn/gigaset/extr_interface.c_gigaset_if_initdriver.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/isdn/gigaset/extr_interface.c_gigaset_if_initdriver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.gigaset_driver = type { i32, %struct.tty_driver*, i32, i32 }
%struct.tty_driver = type { i32, i8*, i8*, %struct.TYPE_2__, i32, i32, i32 }

@TTY_DRIVER_TYPE_SERIAL = common dso_local global i32 0, align 4
@SERIAL_TYPE_NORMAL = common dso_local global i32 0, align 4
@TTY_DRIVER_REAL_RAW = common dso_local global i32 0, align 4
@TTY_DRIVER_DYNAMIC_DEV = common dso_local global i32 0, align 4
@tty_std_termios = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@B9600 = common dso_local global i32 0, align 4
@CS8 = common dso_local global i32 0, align 4
@CREAD = common dso_local global i32 0, align 4
@HUPCL = common dso_local global i32 0, align 4
@CLOCAL = common dso_local global i32 0, align 4
@if_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"error %d registering tty driver\0A\00", align 1
@DEBUG_IF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"tty driver initialized\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"out of memory\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gigaset_if_initdriver(%struct.gigaset_driver* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.gigaset_driver*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.tty_driver*, align 8
  store %struct.gigaset_driver* %0, %struct.gigaset_driver** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load %struct.gigaset_driver*, %struct.gigaset_driver** %4, align 8
  %10 = getelementptr inbounds %struct.gigaset_driver, %struct.gigaset_driver* %9, i32 0, i32 0
  store i32 0, i32* %10, align 8
  %11 = load %struct.gigaset_driver*, %struct.gigaset_driver** %4, align 8
  %12 = getelementptr inbounds %struct.gigaset_driver, %struct.gigaset_driver* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.tty_driver* @alloc_tty_driver(i32 %13)
  store %struct.tty_driver* %14, %struct.tty_driver** %8, align 8
  %15 = load %struct.gigaset_driver*, %struct.gigaset_driver** %4, align 8
  %16 = getelementptr inbounds %struct.gigaset_driver, %struct.gigaset_driver* %15, i32 0, i32 1
  store %struct.tty_driver* %14, %struct.tty_driver** %16, align 8
  %17 = load %struct.tty_driver*, %struct.tty_driver** %8, align 8
  %18 = icmp eq %struct.tty_driver* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  br label %72

20:                                               ; preds = %3
  %21 = load i32, i32* @TTY_DRIVER_TYPE_SERIAL, align 4
  %22 = load %struct.tty_driver*, %struct.tty_driver** %8, align 8
  %23 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %22, i32 0, i32 6
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* @SERIAL_TYPE_NORMAL, align 4
  %25 = load %struct.tty_driver*, %struct.tty_driver** %8, align 8
  %26 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %25, i32 0, i32 5
  store i32 %24, i32* %26, align 8
  %27 = load i32, i32* @TTY_DRIVER_REAL_RAW, align 4
  %28 = load i32, i32* @TTY_DRIVER_DYNAMIC_DEV, align 4
  %29 = or i32 %27, %28
  %30 = load %struct.tty_driver*, %struct.tty_driver** %8, align 8
  %31 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load i8*, i8** %5, align 8
  %33 = load %struct.tty_driver*, %struct.tty_driver** %8, align 8
  %34 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %33, i32 0, i32 1
  store i8* %32, i8** %34, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = load %struct.tty_driver*, %struct.tty_driver** %8, align 8
  %37 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %36, i32 0, i32 2
  store i8* %35, i8** %37, align 8
  %38 = load %struct.gigaset_driver*, %struct.gigaset_driver** %4, align 8
  %39 = getelementptr inbounds %struct.gigaset_driver, %struct.gigaset_driver* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.tty_driver*, %struct.tty_driver** %8, align 8
  %42 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %41, i32 0, i32 4
  store i32 %40, i32* %42, align 4
  %43 = load %struct.tty_driver*, %struct.tty_driver** %8, align 8
  %44 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %43, i32 0, i32 3
  %45 = bitcast %struct.TYPE_2__* %44 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %45, i8* align 4 bitcast (%struct.TYPE_2__* @tty_std_termios to i8*), i64 4, i1 false)
  %46 = load i32, i32* @B9600, align 4
  %47 = load i32, i32* @CS8, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @CREAD, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @HUPCL, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @CLOCAL, align 4
  %54 = or i32 %52, %53
  %55 = load %struct.tty_driver*, %struct.tty_driver** %8, align 8
  %56 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  store i32 %54, i32* %57, align 8
  %58 = load %struct.tty_driver*, %struct.tty_driver** %8, align 8
  %59 = call i32 @tty_set_operations(%struct.tty_driver* %58, i32* @if_ops)
  %60 = load %struct.tty_driver*, %struct.tty_driver** %8, align 8
  %61 = call i32 @tty_register_driver(%struct.tty_driver* %60)
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* %7, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %20
  %65 = load i32, i32* %7, align 4
  %66 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %65)
  br label %74

67:                                               ; preds = %20
  %68 = load i32, i32* @DEBUG_IF, align 4
  %69 = call i32 @gig_dbg(i32 %68, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %70 = load %struct.gigaset_driver*, %struct.gigaset_driver** %4, align 8
  %71 = getelementptr inbounds %struct.gigaset_driver, %struct.gigaset_driver* %70, i32 0, i32 0
  store i32 1, i32* %71, align 8
  br label %84

72:                                               ; preds = %19
  %73 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  br label %74

74:                                               ; preds = %72, %64
  %75 = load %struct.gigaset_driver*, %struct.gigaset_driver** %4, align 8
  %76 = getelementptr inbounds %struct.gigaset_driver, %struct.gigaset_driver* %75, i32 0, i32 1
  %77 = load %struct.tty_driver*, %struct.tty_driver** %76, align 8
  %78 = icmp ne %struct.tty_driver* %77, null
  br i1 %78, label %79, label %84

79:                                               ; preds = %74
  %80 = load %struct.gigaset_driver*, %struct.gigaset_driver** %4, align 8
  %81 = getelementptr inbounds %struct.gigaset_driver, %struct.gigaset_driver* %80, i32 0, i32 1
  %82 = load %struct.tty_driver*, %struct.tty_driver** %81, align 8
  %83 = call i32 @put_tty_driver(%struct.tty_driver* %82)
  br label %84

84:                                               ; preds = %67, %79, %74
  ret void
}

declare dso_local %struct.tty_driver* @alloc_tty_driver(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @tty_set_operations(%struct.tty_driver*, i32*) #1

declare dso_local i32 @tty_register_driver(%struct.tty_driver*) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @gig_dbg(i32, i8*) #1

declare dso_local i32 @put_tty_driver(%struct.tty_driver*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

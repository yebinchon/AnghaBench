; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_tty_ioctl.c_tty_set_termios.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_tty_ioctl.c_tty_set_termios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32, %struct.ktermios, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.ktermios = type { i32 }
%struct.TYPE_5__ = type { {}* }
%struct.TYPE_4__ = type { i64, i64 }
%struct.tty_ldisc = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.tty_struct*, %struct.ktermios*)* }

@TTY_DRIVER_TYPE_PTY = common dso_local global i64 0, align 8
@PTY_TYPE_MASTER = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tty_set_termios(%struct.tty_struct* %0, %struct.ktermios* %1) #0 {
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca %struct.ktermios*, align 8
  %5 = alloca %struct.ktermios, align 4
  %6 = alloca %struct.tty_ldisc*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %3, align 8
  store %struct.ktermios* %1, %struct.ktermios** %4, align 8
  %7 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %8 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %7, i32 0, i32 3
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @TTY_DRIVER_TYPE_PTY, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %22

14:                                               ; preds = %2
  %15 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %16 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %15, i32 0, i32 3
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @PTY_TYPE_MASTER, align 8
  %21 = icmp eq i64 %19, %20
  br label %22

22:                                               ; preds = %14, %2
  %23 = phi i1 [ false, %2 ], [ %21, %14 ]
  %24 = zext i1 %23 to i32
  %25 = call i32 @WARN_ON(i32 %24)
  %26 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %27 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %26, i32 0, i32 0
  %28 = call i32 @down_write(i32* %27)
  %29 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %30 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %29, i32 0, i32 1
  %31 = bitcast %struct.ktermios* %5 to i8*
  %32 = bitcast %struct.ktermios* %30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %31, i8* align 4 %32, i64 4, i1 false)
  %33 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %34 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %33, i32 0, i32 1
  %35 = load %struct.ktermios*, %struct.ktermios** %4, align 8
  %36 = bitcast %struct.ktermios* %34 to i8*
  %37 = bitcast %struct.ktermios* %35 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %36, i8* align 4 %37, i64 4, i1 false)
  %38 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %39 = call i32 @unset_locked_termios(%struct.tty_struct* %38, %struct.ktermios* %5)
  %40 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %41 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %40, i32 0, i32 2
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = bitcast {}** %43 to i32 (%struct.tty_struct*, %struct.ktermios*)**
  %45 = load i32 (%struct.tty_struct*, %struct.ktermios*)*, i32 (%struct.tty_struct*, %struct.ktermios*)** %44, align 8
  %46 = icmp ne i32 (%struct.tty_struct*, %struct.ktermios*)* %45, null
  br i1 %46, label %47, label %56

47:                                               ; preds = %22
  %48 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %49 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %48, i32 0, i32 2
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = bitcast {}** %51 to i32 (%struct.tty_struct*, %struct.ktermios*)**
  %53 = load i32 (%struct.tty_struct*, %struct.ktermios*)*, i32 (%struct.tty_struct*, %struct.ktermios*)** %52, align 8
  %54 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %55 = call i32 %53(%struct.tty_struct* %54, %struct.ktermios* %5)
  br label %60

56:                                               ; preds = %22
  %57 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %58 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %57, i32 0, i32 1
  %59 = call i32 @tty_termios_copy_hw(%struct.ktermios* %58, %struct.ktermios* %5)
  br label %60

60:                                               ; preds = %56, %47
  %61 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %62 = call %struct.tty_ldisc* @tty_ldisc_ref(%struct.tty_struct* %61)
  store %struct.tty_ldisc* %62, %struct.tty_ldisc** %6, align 8
  %63 = load %struct.tty_ldisc*, %struct.tty_ldisc** %6, align 8
  %64 = icmp ne %struct.tty_ldisc* %63, null
  br i1 %64, label %65, label %83

65:                                               ; preds = %60
  %66 = load %struct.tty_ldisc*, %struct.tty_ldisc** %6, align 8
  %67 = getelementptr inbounds %struct.tty_ldisc, %struct.tty_ldisc* %66, i32 0, i32 0
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i32 (%struct.tty_struct*, %struct.ktermios*)*, i32 (%struct.tty_struct*, %struct.ktermios*)** %69, align 8
  %71 = icmp ne i32 (%struct.tty_struct*, %struct.ktermios*)* %70, null
  br i1 %71, label %72, label %80

72:                                               ; preds = %65
  %73 = load %struct.tty_ldisc*, %struct.tty_ldisc** %6, align 8
  %74 = getelementptr inbounds %struct.tty_ldisc, %struct.tty_ldisc* %73, i32 0, i32 0
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load i32 (%struct.tty_struct*, %struct.ktermios*)*, i32 (%struct.tty_struct*, %struct.ktermios*)** %76, align 8
  %78 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %79 = call i32 %77(%struct.tty_struct* %78, %struct.ktermios* %5)
  br label %80

80:                                               ; preds = %72, %65
  %81 = load %struct.tty_ldisc*, %struct.tty_ldisc** %6, align 8
  %82 = call i32 @tty_ldisc_deref(%struct.tty_ldisc* %81)
  br label %83

83:                                               ; preds = %80, %60
  %84 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %85 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %84, i32 0, i32 0
  %86 = call i32 @up_write(i32* %85)
  ret i32 0
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @down_write(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @unset_locked_termios(%struct.tty_struct*, %struct.ktermios*) #1

declare dso_local i32 @tty_termios_copy_hw(%struct.ktermios*, %struct.ktermios*) #1

declare dso_local %struct.tty_ldisc* @tty_ldisc_ref(%struct.tty_struct*) #1

declare dso_local i32 @tty_ldisc_deref(%struct.tty_ldisc*) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_cyclades.c_cy_cflags_changed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_cyclades.c_cy_cflags_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cyclades_port = type { %struct.TYPE_2__*, %struct.cyclades_icount }
%struct.TYPE_2__ = type { i32 }
%struct.cyclades_icount = type { i64, i64, i64, i64 }

@TIOCM_RNG = common dso_local global i64 0, align 8
@TIOCM_DSR = common dso_local global i64 0, align 8
@TIOCM_CD = common dso_local global i64 0, align 8
@TIOCM_CTS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cyclades_port*, i64, %struct.cyclades_icount*)* @cy_cflags_changed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cy_cflags_changed(%struct.cyclades_port* %0, i64 %1, %struct.cyclades_icount* %2) #0 {
  %4 = alloca %struct.cyclades_port*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.cyclades_icount*, align 8
  %7 = alloca %struct.cyclades_icount, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.cyclades_port* %0, %struct.cyclades_port** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.cyclades_icount* %2, %struct.cyclades_icount** %6, align 8
  %10 = load %struct.cyclades_port*, %struct.cyclades_port** %4, align 8
  %11 = getelementptr inbounds %struct.cyclades_port, %struct.cyclades_port* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %8, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load %struct.cyclades_port*, %struct.cyclades_port** %4, align 8
  %17 = getelementptr inbounds %struct.cyclades_port, %struct.cyclades_port* %16, i32 0, i32 1
  %18 = bitcast %struct.cyclades_icount* %7 to i8*
  %19 = bitcast %struct.cyclades_icount* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %18, i8* align 8 %19, i64 32, i1 false)
  %20 = load %struct.cyclades_port*, %struct.cyclades_port** %4, align 8
  %21 = getelementptr inbounds %struct.cyclades_port, %struct.cyclades_port* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %8, align 8
  %25 = call i32 @spin_unlock_irqrestore(i32* %23, i64 %24)
  %26 = load i64, i64* %5, align 8
  %27 = load i64, i64* @TIOCM_RNG, align 8
  %28 = and i64 %26, %27
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %3
  %31 = getelementptr inbounds %struct.cyclades_icount, %struct.cyclades_icount* %7, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.cyclades_icount*, %struct.cyclades_icount** %6, align 8
  %34 = getelementptr inbounds %struct.cyclades_icount, %struct.cyclades_icount* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %32, %35
  br i1 %36, label %75, label %37

37:                                               ; preds = %30, %3
  %38 = load i64, i64* %5, align 8
  %39 = load i64, i64* @TIOCM_DSR, align 8
  %40 = and i64 %38, %39
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.cyclades_icount, %struct.cyclades_icount* %7, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.cyclades_icount*, %struct.cyclades_icount** %6, align 8
  %46 = getelementptr inbounds %struct.cyclades_icount, %struct.cyclades_icount* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %44, %47
  br i1 %48, label %75, label %49

49:                                               ; preds = %42, %37
  %50 = load i64, i64* %5, align 8
  %51 = load i64, i64* @TIOCM_CD, align 8
  %52 = and i64 %50, %51
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.cyclades_icount, %struct.cyclades_icount* %7, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.cyclades_icount*, %struct.cyclades_icount** %6, align 8
  %58 = getelementptr inbounds %struct.cyclades_icount, %struct.cyclades_icount* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %56, %59
  br i1 %60, label %75, label %61

61:                                               ; preds = %54, %49
  %62 = load i64, i64* %5, align 8
  %63 = load i64, i64* @TIOCM_CTS, align 8
  %64 = and i64 %62, %63
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %61
  %67 = getelementptr inbounds %struct.cyclades_icount, %struct.cyclades_icount* %7, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.cyclades_icount*, %struct.cyclades_icount** %6, align 8
  %70 = getelementptr inbounds %struct.cyclades_icount, %struct.cyclades_icount* %69, i32 0, i32 3
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %68, %71
  br label %73

73:                                               ; preds = %66, %61
  %74 = phi i1 [ false, %61 ], [ %72, %66 ]
  br label %75

75:                                               ; preds = %73, %54, %42, %30
  %76 = phi i1 [ true, %54 ], [ true, %42 ], [ true, %30 ], [ %74, %73 ]
  %77 = zext i1 %76 to i32
  store i32 %77, i32* %9, align 4
  %78 = load %struct.cyclades_icount*, %struct.cyclades_icount** %6, align 8
  %79 = bitcast %struct.cyclades_icount* %78 to i8*
  %80 = bitcast %struct.cyclades_icount* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %79, i8* align 8 %80, i64 32, i1 false)
  %81 = load i32, i32* %9, align 4
  ret i32 %81
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

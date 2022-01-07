; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_init.c_qla24xx_abort_iocb_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_init.c_qla24xx_abort_iocb_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 (%struct.TYPE_11__*, i32)*, %struct.qla_qpair*, %struct.TYPE_7__ }
%struct.qla_qpair = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64, %struct.TYPE_11__** }
%struct.TYPE_7__ = type { %struct.srb_iocb }
%struct.srb_iocb = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }

@CS_TIMEOUT = common dso_local global i32 0, align 4
@QLA_OS_TIMER_EXPIRED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @qla24xx_abort_iocb_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qla24xx_abort_iocb_timeout(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.srb_iocb*, align 8
  %5 = alloca %struct.qla_qpair*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = bitcast i8* %8 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %9, %struct.TYPE_11__** %3, align 8
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  store %struct.srb_iocb* %12, %struct.srb_iocb** %4, align 8
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 1
  %15 = load %struct.qla_qpair*, %struct.qla_qpair** %14, align 8
  store %struct.qla_qpair* %15, %struct.qla_qpair** %5, align 8
  %16 = load %struct.qla_qpair*, %struct.qla_qpair** %5, align 8
  %17 = getelementptr inbounds %struct.qla_qpair, %struct.qla_qpair* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i64, i64* %7, align 8
  %20 = call i32 @spin_lock_irqsave(i32 %18, i64 %19)
  store i64 1, i64* %6, align 8
  br label %21

21:                                               ; preds = %49, %1
  %22 = load i64, i64* %6, align 8
  %23 = load %struct.qla_qpair*, %struct.qla_qpair** %5, align 8
  %24 = getelementptr inbounds %struct.qla_qpair, %struct.qla_qpair* %23, i32 0, i32 1
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ult i64 %22, %27
  br i1 %28, label %29, label %52

29:                                               ; preds = %21
  %30 = load %struct.qla_qpair*, %struct.qla_qpair** %5, align 8
  %31 = getelementptr inbounds %struct.qla_qpair, %struct.qla_qpair* %30, i32 0, i32 1
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %33, align 8
  %35 = load i64, i64* %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %34, i64 %35
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %36, align 8
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %39 = icmp eq %struct.TYPE_11__* %37, %38
  br i1 %39, label %40, label %48

40:                                               ; preds = %29
  %41 = load %struct.qla_qpair*, %struct.qla_qpair** %5, align 8
  %42 = getelementptr inbounds %struct.qla_qpair, %struct.qla_qpair* %41, i32 0, i32 1
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %44, align 8
  %46 = load i64, i64* %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %45, i64 %46
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %47, align 8
  br label %52

48:                                               ; preds = %29
  br label %49

49:                                               ; preds = %48
  %50 = load i64, i64* %6, align 8
  %51 = add i64 %50, 1
  store i64 %51, i64* %6, align 8
  br label %21

52:                                               ; preds = %40, %21
  %53 = load %struct.qla_qpair*, %struct.qla_qpair** %5, align 8
  %54 = getelementptr inbounds %struct.qla_qpair, %struct.qla_qpair* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i64, i64* %7, align 8
  %57 = call i32 @spin_unlock_irqrestore(i32 %55, i64 %56)
  %58 = load i32, i32* @CS_TIMEOUT, align 4
  %59 = load %struct.srb_iocb*, %struct.srb_iocb** %4, align 8
  %60 = getelementptr inbounds %struct.srb_iocb, %struct.srb_iocb* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  store i32 %58, i32* %62, align 4
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 0
  %65 = load i32 (%struct.TYPE_11__*, i32)*, i32 (%struct.TYPE_11__*, i32)** %64, align 8
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %67 = load i32, i32* @QLA_OS_TIMER_EXPIRED, align 4
  %68 = call i32 %65(%struct.TYPE_11__* %66, i32 %67)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

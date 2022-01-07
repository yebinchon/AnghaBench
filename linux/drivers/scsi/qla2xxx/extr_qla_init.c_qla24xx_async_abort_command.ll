; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_init.c_qla24xx_async_abort_command.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_init.c_qla24xx_async_abort_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, %struct.qla_qpair*, %struct.TYPE_10__* }
%struct.qla_qpair = type { i32, %struct.req_que* }
%struct.req_que = type { i64, %struct.TYPE_9__** }
%struct.TYPE_10__ = type { %struct.scsi_qla_host* }
%struct.scsi_qla_host = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@QLA_FUNCTION_FAILED = common dso_local global i32 0, align 4
@SRB_FXIOCB_DCMD = common dso_local global i64 0, align 8
@FXDISC_ABORT_IOCTL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qla24xx_async_abort_command(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca %struct.qla_qpair*, align 8
  %8 = alloca %struct.scsi_qla_host*, align 8
  %9 = alloca %struct.req_que*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store i64 0, i64* %4, align 8
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 2
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  store %struct.TYPE_10__* %12, %struct.TYPE_10__** %6, align 8
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 1
  %15 = load %struct.qla_qpair*, %struct.qla_qpair** %14, align 8
  store %struct.qla_qpair* %15, %struct.qla_qpair** %7, align 8
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %18 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %17, align 8
  store %struct.scsi_qla_host* %18, %struct.scsi_qla_host** %8, align 8
  %19 = load %struct.qla_qpair*, %struct.qla_qpair** %7, align 8
  %20 = getelementptr inbounds %struct.qla_qpair, %struct.qla_qpair* %19, i32 0, i32 1
  %21 = load %struct.req_que*, %struct.req_que** %20, align 8
  store %struct.req_que* %21, %struct.req_que** %9, align 8
  %22 = load %struct.qla_qpair*, %struct.qla_qpair** %7, align 8
  %23 = getelementptr inbounds %struct.qla_qpair, %struct.qla_qpair* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i64, i64* %4, align 8
  %26 = call i32 @spin_lock_irqsave(i32 %24, i64 %25)
  store i64 1, i64* %5, align 8
  br label %27

27:                                               ; preds = %44, %1
  %28 = load i64, i64* %5, align 8
  %29 = load %struct.req_que*, %struct.req_que** %9, align 8
  %30 = getelementptr inbounds %struct.req_que, %struct.req_que* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ult i64 %28, %31
  br i1 %32, label %33, label %47

33:                                               ; preds = %27
  %34 = load %struct.req_que*, %struct.req_que** %9, align 8
  %35 = getelementptr inbounds %struct.req_que, %struct.req_que* %34, i32 0, i32 1
  %36 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %35, align 8
  %37 = load i64, i64* %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %36, i64 %37
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %38, align 8
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %41 = icmp eq %struct.TYPE_9__* %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %33
  br label %47

43:                                               ; preds = %33
  br label %44

44:                                               ; preds = %43
  %45 = load i64, i64* %5, align 8
  %46 = add i64 %45, 1
  store i64 %46, i64* %5, align 8
  br label %27

47:                                               ; preds = %42, %27
  %48 = load %struct.qla_qpair*, %struct.qla_qpair** %7, align 8
  %49 = getelementptr inbounds %struct.qla_qpair, %struct.qla_qpair* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i64, i64* %4, align 8
  %52 = call i32 @spin_unlock_irqrestore(i32 %50, i64 %51)
  %53 = load i64, i64* %5, align 8
  %54 = load %struct.req_que*, %struct.req_que** %9, align 8
  %55 = getelementptr inbounds %struct.req_que, %struct.req_que* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp eq i64 %53, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %47
  %59 = load i32, i32* @QLA_FUNCTION_FAILED, align 4
  store i32 %59, i32* %2, align 4
  br label %78

60:                                               ; preds = %47
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @SRB_FXIOCB_DCMD, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %75

66:                                               ; preds = %60
  %67 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %8, align 8
  %68 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %8, align 8
  %69 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %68, i32 0, i32 0
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = load i32, i32* @FXDISC_ABORT_IOCTL, align 4
  %74 = call i32 @qlafx00_fx_disc(%struct.scsi_qla_host* %67, i32* %72, i32 %73)
  store i32 %74, i32* %2, align 4
  br label %78

75:                                               ; preds = %60
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %77 = call i32 @qla24xx_async_abort_cmd(%struct.TYPE_9__* %76, i32 1)
  store i32 %77, i32* %2, align 4
  br label %78

78:                                               ; preds = %75, %66, %58
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

declare dso_local i32 @qlafx00_fx_disc(%struct.scsi_qla_host*, i32*, i32) #1

declare dso_local i32 @qla24xx_async_abort_cmd(%struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

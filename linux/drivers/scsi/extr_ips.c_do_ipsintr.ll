; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_ips.c_do_ipsintr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_ips.c_do_ipsintr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i32 }
%struct.TYPE_7__ = type { i64, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32 (%struct.TYPE_7__*)* }

@.str = private unnamed_addr constant [11 x i8] c"do_ipsintr\00", align 1
@IRQ_NONE = common dso_local global i32 0, align 4
@ips_sh = common dso_local global %struct.Scsi_Host** null, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@IPS_INTR_ON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @do_ipsintr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_ipsintr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca %struct.Scsi_Host*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = call i32 @METHOD_TRACE(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 2)
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %11, %struct.TYPE_7__** %6, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %13 = icmp ne %struct.TYPE_7__* %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @IRQ_NONE, align 4
  store i32 %15, i32* %3, align 4
  br label %64

16:                                               ; preds = %2
  %17 = load %struct.Scsi_Host**, %struct.Scsi_Host*** @ips_sh, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds %struct.Scsi_Host*, %struct.Scsi_Host** %17, i64 %20
  %22 = load %struct.Scsi_Host*, %struct.Scsi_Host** %21, align 8
  store %struct.Scsi_Host* %22, %struct.Scsi_Host** %7, align 8
  %23 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %24 = icmp ne %struct.Scsi_Host* %23, null
  br i1 %24, label %33, label %25

25:                                               ; preds = %16
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32 (%struct.TYPE_7__*)*, i32 (%struct.TYPE_7__*)** %28, align 8
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %31 = call i32 %29(%struct.TYPE_7__* %30)
  %32 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %32, i32* %3, align 4
  br label %64

33:                                               ; preds = %16
  %34 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %35 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @spin_lock(i32 %36)
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %33
  %43 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %44 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @spin_unlock(i32 %45)
  %47 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %47, i32* %3, align 4
  br label %64

48:                                               ; preds = %33
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i32 (%struct.TYPE_7__*)*, i32 (%struct.TYPE_7__*)** %51, align 8
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %54 = call i32 %52(%struct.TYPE_7__* %53)
  store i32 %54, i32* %8, align 4
  %55 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %56 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @spin_unlock(i32 %57)
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %60 = load i32, i32* @IPS_INTR_ON, align 4
  %61 = call i32 @ips_next(%struct.TYPE_7__* %59, i32 %60)
  %62 = load i32, i32* %8, align 4
  %63 = call i32 @IRQ_RETVAL(i32 %62)
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %48, %42, %25, %14
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32 @METHOD_TRACE(i8*, i32) #1

declare dso_local i32 @spin_lock(i32) #1

declare dso_local i32 @spin_unlock(i32) #1

declare dso_local i32 @ips_next(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @IRQ_RETVAL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

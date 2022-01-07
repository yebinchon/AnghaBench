; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/sym53c8xx_2/extr_sym_nvram.c_sym_Symbios_setup_target.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/sym53c8xx_2/extr_sym_nvram.c_sym_Symbios_setup_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sym_tcb = type { i32, i32, i32, i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32 }

@SYMBIOS_QUEUE_TAGS_ENABLED = common dso_local global i32 0, align 4
@SYMBIOS_DISCONNECT_ENABLE = common dso_local global i32 0, align 4
@SYM_DISC_ENABLED = common dso_local global i32 0, align 4
@SYMBIOS_SCAN_AT_BOOT_TIME = common dso_local global i32 0, align 4
@SYM_SCAN_BOOT_DISABLED = common dso_local global i32 0, align 4
@SYMBIOS_SCAN_LUNS = common dso_local global i32 0, align 4
@SYM_SCAN_LUNS_DISABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sym_tcb*, i32, %struct.TYPE_5__*)* @sym_Symbios_setup_target to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sym_Symbios_setup_target(%struct.sym_tcb* %0, i32 %1, %struct.TYPE_5__* %2) #0 {
  %4 = alloca %struct.sym_tcb*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  store %struct.sym_tcb* %0, %struct.sym_tcb** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %6, align 8
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = load i32, i32* %5, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i64 %12
  store %struct.TYPE_4__* %13, %struct.TYPE_4__** %7, align 8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @SYMBIOS_QUEUE_TAGS_ENABLED, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %3
  %21 = load %struct.sym_tcb*, %struct.sym_tcb** %4, align 8
  %22 = getelementptr inbounds %struct.sym_tcb, %struct.sym_tcb* %21, i32 0, i32 3
  store i64 0, i64* %22, align 8
  br label %23

23:                                               ; preds = %20, %3
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @SYMBIOS_DISCONNECT_ENABLE, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %37, label %30

30:                                               ; preds = %23
  %31 = load i32, i32* @SYM_DISC_ENABLED, align 4
  %32 = xor i32 %31, -1
  %33 = load %struct.sym_tcb*, %struct.sym_tcb** %4, align 8
  %34 = getelementptr inbounds %struct.sym_tcb, %struct.sym_tcb* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = and i32 %35, %32
  store i32 %36, i32* %34, align 8
  br label %37

37:                                               ; preds = %30, %23
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @SYMBIOS_SCAN_AT_BOOT_TIME, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %37
  %45 = load i32, i32* @SYM_SCAN_BOOT_DISABLED, align 4
  %46 = load %struct.sym_tcb*, %struct.sym_tcb** %4, align 8
  %47 = getelementptr inbounds %struct.sym_tcb, %struct.sym_tcb* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = or i32 %48, %45
  store i32 %49, i32* %47, align 8
  br label %50

50:                                               ; preds = %44, %37
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @SYMBIOS_SCAN_LUNS, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %63, label %57

57:                                               ; preds = %50
  %58 = load i32, i32* @SYM_SCAN_LUNS_DISABLED, align 4
  %59 = load %struct.sym_tcb*, %struct.sym_tcb** %4, align 8
  %60 = getelementptr inbounds %struct.sym_tcb, %struct.sym_tcb* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = or i32 %61, %58
  store i32 %62, i32* %60, align 8
  br label %63

63:                                               ; preds = %57, %50
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 %66, 3
  %68 = sdiv i32 %67, 4
  %69 = load %struct.sym_tcb*, %struct.sym_tcb** %4, align 8
  %70 = getelementptr inbounds %struct.sym_tcb, %struct.sym_tcb* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 8
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = icmp eq i32 %73, 8
  %75 = zext i1 %74 to i64
  %76 = select i1 %74, i32 0, i32 1
  %77 = load %struct.sym_tcb*, %struct.sym_tcb** %4, align 8
  %78 = getelementptr inbounds %struct.sym_tcb, %struct.sym_tcb* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aic94xx/extr_aic94xx_hwi.c_asd_post_ascb_list.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aic94xx/extr_aic94xx_hwi.c_asd_post_ascb_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asd_ha_struct = type { %struct.TYPE_7__, i32, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32, i32, i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.asd_ascb = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@list = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"%s: scb queue full\0A\00", align 1
@SAS_QUEUE_FULL = common dso_local global i32 0, align 4
@SCBPRO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @asd_post_ascb_list(%struct.asd_ha_struct* %0, %struct.asd_ascb* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.asd_ha_struct*, align 8
  %6 = alloca %struct.asd_ascb*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.asd_ha_struct* %0, %struct.asd_ha_struct** %5, align 8
  store %struct.asd_ascb* %1, %struct.asd_ascb** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* @list, align 4
  %11 = call i32 @LIST_HEAD(i32 %10)
  %12 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %5, align 8
  %13 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 1
  %15 = load i64, i64* %8, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %5, align 8
  %18 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %5, align 8
  %22 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = sub nsw i32 %20, %24
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp sge i32 %26, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %3
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %5, align 8
  %32 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = add nsw i32 %34, %30
  store i32 %35, i32* %33, align 8
  br label %37

36:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %37

37:                                               ; preds = %36, %29
  %38 = load i32, i32* %9, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %53, label %40

40:                                               ; preds = %37
  %41 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %5, align 8
  %42 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 1
  %44 = load i64, i64* %8, align 8
  %45 = call i32 @spin_unlock_irqrestore(i32* %43, i64 %44)
  %46 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %5, align 8
  %47 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @pci_name(i32 %48)
  %50 = call i32 @asd_printk(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* @SAS_QUEUE_FULL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %4, align 4
  br label %91

53:                                               ; preds = %37
  %54 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %5, align 8
  %55 = load %struct.asd_ascb*, %struct.asd_ascb** %6, align 8
  %56 = call i32 @asd_swap_head_scb(%struct.asd_ha_struct* %54, %struct.asd_ascb* %55)
  %57 = load %struct.asd_ascb*, %struct.asd_ascb** %6, align 8
  %58 = getelementptr inbounds %struct.asd_ascb, %struct.asd_ascb* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.asd_ascb*, %struct.asd_ascb** %6, align 8
  %62 = getelementptr inbounds %struct.asd_ascb, %struct.asd_ascb* %61, i32 0, i32 0
  %63 = call i32 @__list_add(i32* @list, i32 %60, %struct.TYPE_8__* %62)
  %64 = call i32 @asd_start_scb_timers(i32* @list)
  %65 = load i32, i32* %7, align 4
  %66 = sext i32 %65 to i64
  %67 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %5, align 8
  %68 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = add nsw i64 %70, %66
  store i64 %71, i64* %69, align 8
  %72 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %5, align 8
  %73 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 3
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @list_splice_init(i32* @list, i32 %76)
  %78 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %5, align 8
  %79 = load i32, i32* @SCBPRO, align 4
  %80 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %5, align 8
  %81 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = trunc i64 %83 to i32
  %85 = call i32 @asd_write_reg_dword(%struct.asd_ha_struct* %78, i32 %79, i32 %84)
  %86 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %5, align 8
  %87 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 1
  %89 = load i64, i64* %8, align 8
  %90 = call i32 @spin_unlock_irqrestore(i32* %88, i64 %89)
  store i32 0, i32* %4, align 4
  br label %91

91:                                               ; preds = %53, %40
  %92 = load i32, i32* %4, align 4
  ret i32 %92
}

declare dso_local i32 @LIST_HEAD(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @asd_printk(i8*, i32) #1

declare dso_local i32 @pci_name(i32) #1

declare dso_local i32 @asd_swap_head_scb(%struct.asd_ha_struct*, %struct.asd_ascb*) #1

declare dso_local i32 @__list_add(i32*, i32, %struct.TYPE_8__*) #1

declare dso_local i32 @asd_start_scb_timers(i32*) #1

declare dso_local i32 @list_splice_init(i32*, i32) #1

declare dso_local i32 @asd_write_reg_dword(%struct.asd_ha_struct*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

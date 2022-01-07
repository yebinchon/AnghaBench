; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aic94xx/extr_aic94xx_hwi.c_asd_init_ctxmem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aic94xx/extr_aic94xx_hwi.c_asd_init_ctxmem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asd_ha_struct = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.asd_ha_struct*)* @asd_init_ctxmem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asd_init_ctxmem(%struct.asd_ha_struct* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.asd_ha_struct*, align 8
  %4 = alloca i32, align 4
  store %struct.asd_ha_struct* %0, %struct.asd_ha_struct** %3, align 8
  %5 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %6 = call i32 @asd_get_max_scb_ddb(%struct.asd_ha_struct* %5)
  %7 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %8 = call i32 @asd_extend_devctx(%struct.asd_ha_struct* %7)
  %9 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %10 = call i32 @asd_extend_cmdctx(%struct.asd_ha_struct* %9)
  %11 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %12 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = add nsw i32 %14, 7
  %16 = sdiv i32 %15, 8
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = mul nsw i32 %17, 8
  %19 = call i32 @BITS_TO_LONGS(i32 %18)
  %20 = sext i32 %19 to i64
  %21 = mul i64 %20, 8
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call i32 @kzalloc(i32 %23, i32 %24)
  %26 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %27 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 2
  store i32 %25, i32* %28, align 4
  %29 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %30 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %1
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %42

37:                                               ; preds = %1
  %38 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %39 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = call i32 @spin_lock_init(i32* %40)
  store i32 0, i32* %2, align 4
  br label %42

42:                                               ; preds = %37, %34
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i32 @asd_get_max_scb_ddb(%struct.asd_ha_struct*) #1

declare dso_local i32 @asd_extend_devctx(%struct.asd_ha_struct*) #1

declare dso_local i32 @asd_extend_cmdctx(%struct.asd_ha_struct*) #1

declare dso_local i32 @BITS_TO_LONGS(i32) #1

declare dso_local i32 @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

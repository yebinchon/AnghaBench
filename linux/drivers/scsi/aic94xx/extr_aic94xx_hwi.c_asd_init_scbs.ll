; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aic94xx/extr_aic94xx_hwi.c_asd_init_scbs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aic94xx/extr_aic94xx_hwi.c_asd_init_scbs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asd_ha_struct = type { %struct.asd_seq_data, i32, %struct.TYPE_3__ }
%struct.asd_seq_data = type { i32, i32, i32, i64, i32*, i32*, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.asd_ha_struct*)* @asd_init_scbs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asd_init_scbs(%struct.asd_ha_struct* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.asd_ha_struct*, align 8
  %4 = alloca %struct.asd_seq_data*, align 8
  %5 = alloca i32, align 4
  store %struct.asd_ha_struct* %0, %struct.asd_ha_struct** %3, align 8
  %6 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %7 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %6, i32 0, i32 0
  store %struct.asd_seq_data* %7, %struct.asd_seq_data** %4, align 8
  %8 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %9 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %13 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.asd_seq_data, %struct.asd_seq_data* %13, i32 0, i32 0
  store i32 %11, i32* %14, align 8
  %15 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %16 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.asd_seq_data, %struct.asd_seq_data* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call i32* @kcalloc(i32 %18, i32 8, i32 %19)
  %21 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %22 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.asd_seq_data, %struct.asd_seq_data* %22, i32 0, i32 4
  store i32* %20, i32** %23, align 8
  %24 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %25 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.asd_seq_data, %struct.asd_seq_data* %25, i32 0, i32 4
  %27 = load i32*, i32** %26, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %1
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %118

32:                                               ; preds = %1
  %33 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %34 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.asd_seq_data, %struct.asd_seq_data* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = add nsw i32 %36, 7
  %38 = sdiv i32 %37, 8
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = mul nsw i32 %39, 8
  %41 = call i32 @BITS_TO_LONGS(i32 %40)
  %42 = sext i32 %41 to i64
  %43 = mul i64 %42, 8
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @GFP_KERNEL, align 4
  %47 = call i32* @kzalloc(i32 %45, i32 %46)
  %48 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %49 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.asd_seq_data, %struct.asd_seq_data* %49, i32 0, i32 5
  store i32* %47, i32** %50, align 8
  %51 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %52 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.asd_seq_data, %struct.asd_seq_data* %52, i32 0, i32 5
  %54 = load i32*, i32** %53, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %67, label %56

56:                                               ; preds = %32
  %57 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %58 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.asd_seq_data, %struct.asd_seq_data* %58, i32 0, i32 4
  %60 = load i32*, i32** %59, align 8
  %61 = call i32 @kfree(i32* %60)
  %62 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %63 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.asd_seq_data, %struct.asd_seq_data* %63, i32 0, i32 4
  store i32* null, i32** %64, align 8
  %65 = load i32, i32* @ENOMEM, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %2, align 4
  br label %118

67:                                               ; preds = %32
  %68 = load %struct.asd_seq_data*, %struct.asd_seq_data** %4, align 8
  %69 = getelementptr inbounds %struct.asd_seq_data, %struct.asd_seq_data* %68, i32 0, i32 7
  %70 = call i32 @spin_lock_init(i32* %69)
  %71 = load %struct.asd_seq_data*, %struct.asd_seq_data** %4, align 8
  %72 = getelementptr inbounds %struct.asd_seq_data, %struct.asd_seq_data* %71, i32 0, i32 6
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  store i32 4, i32* %73, align 8
  %74 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %75 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @GFP_KERNEL, align 4
  %78 = load %struct.asd_seq_data*, %struct.asd_seq_data** %4, align 8
  %79 = getelementptr inbounds %struct.asd_seq_data, %struct.asd_seq_data* %78, i32 0, i32 6
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 2
  %81 = call i32 @dma_pool_alloc(i32 %76, i32 %77, i32* %80)
  %82 = load %struct.asd_seq_data*, %struct.asd_seq_data** %4, align 8
  %83 = getelementptr inbounds %struct.asd_seq_data, %struct.asd_seq_data* %82, i32 0, i32 6
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 1
  store i32 %81, i32* %84, align 4
  %85 = load %struct.asd_seq_data*, %struct.asd_seq_data** %4, align 8
  %86 = getelementptr inbounds %struct.asd_seq_data, %struct.asd_seq_data* %85, i32 0, i32 6
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %109, label %90

90:                                               ; preds = %67
  %91 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %92 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.asd_seq_data, %struct.asd_seq_data* %92, i32 0, i32 5
  %94 = load i32*, i32** %93, align 8
  %95 = call i32 @kfree(i32* %94)
  %96 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %97 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.asd_seq_data, %struct.asd_seq_data* %97, i32 0, i32 4
  %99 = load i32*, i32** %98, align 8
  %100 = call i32 @kfree(i32* %99)
  %101 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %102 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.asd_seq_data, %struct.asd_seq_data* %102, i32 0, i32 5
  store i32* null, i32** %103, align 8
  %104 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %105 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.asd_seq_data, %struct.asd_seq_data* %105, i32 0, i32 4
  store i32* null, i32** %106, align 8
  %107 = load i32, i32* @ENOMEM, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %2, align 4
  br label %118

109:                                              ; preds = %67
  %110 = load %struct.asd_seq_data*, %struct.asd_seq_data** %4, align 8
  %111 = getelementptr inbounds %struct.asd_seq_data, %struct.asd_seq_data* %110, i32 0, i32 3
  store i64 0, i64* %111, align 8
  %112 = load %struct.asd_seq_data*, %struct.asd_seq_data** %4, align 8
  %113 = getelementptr inbounds %struct.asd_seq_data, %struct.asd_seq_data* %112, i32 0, i32 2
  %114 = call i32 @spin_lock_init(i32* %113)
  %115 = load %struct.asd_seq_data*, %struct.asd_seq_data** %4, align 8
  %116 = getelementptr inbounds %struct.asd_seq_data, %struct.asd_seq_data* %115, i32 0, i32 1
  %117 = call i32 @INIT_LIST_HEAD(i32* %116)
  store i32 0, i32* %2, align 4
  br label %118

118:                                              ; preds = %109, %90, %56, %29
  %119 = load i32, i32* %2, align 4
  ret i32 %119
}

declare dso_local i32* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @BITS_TO_LONGS(i32) #1

declare dso_local i32* @kzalloc(i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @dma_pool_alloc(i32, i32, i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

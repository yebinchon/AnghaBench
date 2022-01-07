; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_ips.c_ips_init_phase2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_ips.c_ips_init_phase2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_11__*, i32 }
%struct.TYPE_11__ = type { i32 }

@ips_ha = common dso_local global %struct.TYPE_10__** null, align 8
@.str = private unnamed_addr constant [16 x i8] c"ips_init_phase2\00", align 1
@do_ipsintr = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@ips_name = common dso_local global i32 0, align 4
@KERN_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Unable to install interrupt handler\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Unable to allocate a CCB\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"Unable to initialize controller\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"Unable to allocate CCBs\0A\00", align 1
@SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ips_init_phase2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ips_init_phase2(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load %struct.TYPE_10__**, %struct.TYPE_10__*** @ips_ha, align 8
  %6 = load i32, i32* %3, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %5, i64 %7
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  store %struct.TYPE_10__* %9, %struct.TYPE_10__** %4, align 8
  %10 = call i32 @METHOD_TRACE(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 1)
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %1
  %16 = load %struct.TYPE_10__**, %struct.TYPE_10__*** @ips_ha, align 8
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %16, i64 %18
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %19, align 8
  store i32 -1, i32* %2, align 4
  br label %107

20:                                               ; preds = %1
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @do_ipsintr, align 4
  %27 = load i32, i32* @IRQF_SHARED, align 4
  %28 = load i32, i32* @ips_name, align 4
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %30 = call i64 @request_irq(i32 %25, i32 %26, i32 %27, i32 %28, %struct.TYPE_10__* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %20
  %33 = load i32, i32* @KERN_WARNING, align 4
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %35, align 8
  %37 = call i32 @IPS_PRINTK(i32 %33, %struct.TYPE_11__* %36, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %39 = load i32, i32* %3, align 4
  %40 = call i32 @ips_abort_init(%struct.TYPE_10__* %38, i32 %39)
  store i32 %40, i32* %2, align 4
  br label %107

41:                                               ; preds = %20
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  store i32 1, i32* %43, align 8
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %45 = call i32 @ips_allocatescbs(%struct.TYPE_10__* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %63, label %47

47:                                               ; preds = %41
  %48 = load i32, i32* @KERN_WARNING, align 4
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %50, align 8
  %52 = call i32 @IPS_PRINTK(i32 %48, %struct.TYPE_11__* %51, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %59 = call i32 @free_irq(i32 %57, %struct.TYPE_10__* %58)
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %61 = load i32, i32* %3, align 4
  %62 = call i32 @ips_abort_init(%struct.TYPE_10__* %60, i32 %61)
  store i32 %62, i32* %2, align 4
  br label %107

63:                                               ; preds = %41
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %65 = call i32 @ips_hainit(%struct.TYPE_10__* %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %83, label %67

67:                                               ; preds = %63
  %68 = load i32, i32* @KERN_WARNING, align 4
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 1
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %70, align 8
  %72 = call i32 @IPS_PRINTK(i32 %68, %struct.TYPE_11__* %71, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 1
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %79 = call i32 @free_irq(i32 %77, %struct.TYPE_10__* %78)
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %81 = load i32, i32* %3, align 4
  %82 = call i32 @ips_abort_init(%struct.TYPE_10__* %80, i32 %81)
  store i32 %82, i32* %2, align 4
  br label %107

83:                                               ; preds = %63
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %85 = call i32 @ips_deallocatescbs(%struct.TYPE_10__* %84, i32 1)
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %87 = call i32 @ips_allocatescbs(%struct.TYPE_10__* %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %105, label %89

89:                                               ; preds = %83
  %90 = load i32, i32* @KERN_WARNING, align 4
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 1
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %92, align 8
  %94 = call i32 @IPS_PRINTK(i32 %90, %struct.TYPE_11__* %93, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 1
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %101 = call i32 @free_irq(i32 %99, %struct.TYPE_10__* %100)
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %103 = load i32, i32* %3, align 4
  %104 = call i32 @ips_abort_init(%struct.TYPE_10__* %102, i32 %103)
  store i32 %104, i32* %2, align 4
  br label %107

105:                                              ; preds = %83
  %106 = load i32, i32* @SUCCESS, align 4
  store i32 %106, i32* %2, align 4
  br label %107

107:                                              ; preds = %105, %89, %67, %47, %32, %15
  %108 = load i32, i32* %2, align 4
  ret i32 %108
}

declare dso_local i32 @METHOD_TRACE(i8*, i32) #1

declare dso_local i64 @request_irq(i32, i32, i32, i32, %struct.TYPE_10__*) #1

declare dso_local i32 @IPS_PRINTK(i32, %struct.TYPE_11__*, i8*) #1

declare dso_local i32 @ips_abort_init(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @ips_allocatescbs(%struct.TYPE_10__*) #1

declare dso_local i32 @free_irq(i32, %struct.TYPE_10__*) #1

declare dso_local i32 @ips_hainit(%struct.TYPE_10__*) #1

declare dso_local i32 @ips_deallocatescbs(%struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

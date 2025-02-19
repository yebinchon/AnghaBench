; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_ips.c_ips_register_scsi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_ips.c_ips_register_scsi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_13__*, i64, i64, i32, i32, i64, i64 }
%struct.TYPE_13__ = type { i32, i32 }
%struct.Scsi_Host = type { i32, i64, i64, i32, i32, %struct.TYPE_11__*, i32, i32, i64 }
%struct.TYPE_11__ = type { i32, i64, i32 }

@ips_ha = common dso_local global %struct.TYPE_12__** null, align 8
@ips_driver_template = common dso_local global i32 0, align 4
@KERN_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"Unable to register controller with SCSI subsystem\0A\00", align 1
@do_ipsintr = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@ips_name = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Unable to install interrupt handler\0A\00", align 1
@ips_sh = common dso_local global %struct.Scsi_Host** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ips_register_scsi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ips_register_scsi(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.Scsi_Host*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  store i32 %0, i32* %3, align 4
  %7 = load %struct.TYPE_12__**, %struct.TYPE_12__*** @ips_ha, align 8
  %8 = load i32, i32* %3, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %7, i64 %9
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  store %struct.TYPE_12__* %11, %struct.TYPE_12__** %6, align 8
  %12 = call %struct.Scsi_Host* @scsi_host_alloc(i32* @ips_driver_template, i32 48)
  store %struct.Scsi_Host* %12, %struct.Scsi_Host** %4, align 8
  %13 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %14 = icmp ne %struct.Scsi_Host* %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @KERN_WARNING, align 4
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %20 = call i32 @IPS_PRINTK(i32 %16, %struct.TYPE_13__* %19, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %147

21:                                               ; preds = %1
  %22 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %23 = call %struct.TYPE_12__* @IPS_HA(%struct.Scsi_Host* %22)
  store %struct.TYPE_12__* %23, %struct.TYPE_12__** %5, align 8
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %26 = call i32 @memcpy(%struct.TYPE_12__* %24, %struct.TYPE_12__* %25, i32 48)
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %33 = call i32 @free_irq(i32 %31, %struct.TYPE_12__* %32)
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @do_ipsintr, align 4
  %40 = load i32, i32* @IRQF_SHARED, align 4
  %41 = load i32, i32* @ips_name, align 4
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %43 = call i64 @request_irq(i32 %38, i32 %39, i32 %40, i32 %41, %struct.TYPE_12__* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %21
  %46 = load i32, i32* @KERN_WARNING, align 4
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %48, align 8
  %50 = call i32 @IPS_PRINTK(i32 %46, %struct.TYPE_13__* %49, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %144

51:                                               ; preds = %21
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %53 = call i32 @kfree(%struct.TYPE_12__* %52)
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 6
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %51
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 6
  %61 = load i64, i64* %60, align 8
  br label %66

62:                                               ; preds = %51
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 5
  %65 = load i64, i64* %64, align 8
  br label %66

66:                                               ; preds = %62, %58
  %67 = phi i64 [ %61, %58 ], [ %65, %62 ]
  %68 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %69 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %68, i32 0, i32 8
  store i64 %67, i64* %69, align 8
  %70 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %71 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %70, i32 0, i32 5
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %76 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %75, i32 0, i32 7
  store i32 %74, i32* %76, align 4
  %77 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %78 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %77, i32 0, i32 5
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %83 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %82, i32 0, i32 1
  store i64 %81, i64* %83, align 8
  %84 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %85 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %84, i32 0, i32 5
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %90 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %89, i32 0, i32 6
  store i32 %88, i32* %90, align 8
  %91 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %92 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %91, i32 0, i32 0
  store i32 128, i32* %92, align 8
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %97 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %96, i32 0, i32 4
  store i32 %95, i32* %97, align 4
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %102 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %101, i32 0, i32 3
  store i32 %100, i32* %102, align 8
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = sub nsw i64 %105, 1
  %107 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %108 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %107, i32 0, i32 2
  store i64 %106, i64* %108, align 8
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = sub nsw i64 %111, 1
  %113 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %114 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %113, i32 0, i32 1
  store i64 %112, i64* %114, align 8
  %115 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 0
  %118 = load %struct.TYPE_13__*, %struct.TYPE_13__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %118, i32 0, i32 1
  %120 = call i64 @scsi_add_host(%struct.Scsi_Host* %115, i32* %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %66
  br label %136

123:                                              ; preds = %66
  %124 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %125 = load %struct.Scsi_Host**, %struct.Scsi_Host*** @ips_sh, align 8
  %126 = load i32, i32* %3, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.Scsi_Host*, %struct.Scsi_Host** %125, i64 %127
  store %struct.Scsi_Host* %124, %struct.Scsi_Host** %128, align 8
  %129 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %130 = load %struct.TYPE_12__**, %struct.TYPE_12__*** @ips_ha, align 8
  %131 = load i32, i32* %3, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %130, i64 %132
  store %struct.TYPE_12__* %129, %struct.TYPE_12__** %133, align 8
  %134 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %135 = call i32 @scsi_scan_host(%struct.Scsi_Host* %134)
  store i32 0, i32* %2, align 4
  br label %147

136:                                              ; preds = %122
  %137 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i32 0, i32 0
  %139 = load %struct.TYPE_13__*, %struct.TYPE_13__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %143 = call i32 @free_irq(i32 %141, %struct.TYPE_12__* %142)
  br label %144

144:                                              ; preds = %136, %45
  %145 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %146 = call i32 @scsi_host_put(%struct.Scsi_Host* %145)
  store i32 -1, i32* %2, align 4
  br label %147

147:                                              ; preds = %144, %123, %15
  %148 = load i32, i32* %2, align 4
  ret i32 %148
}

declare dso_local %struct.Scsi_Host* @scsi_host_alloc(i32*, i32) #1

declare dso_local i32 @IPS_PRINTK(i32, %struct.TYPE_13__*, i8*) #1

declare dso_local %struct.TYPE_12__* @IPS_HA(%struct.Scsi_Host*) #1

declare dso_local i32 @memcpy(%struct.TYPE_12__*, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @free_irq(i32, %struct.TYPE_12__*) #1

declare dso_local i64 @request_irq(i32, i32, i32, i32, %struct.TYPE_12__*) #1

declare dso_local i32 @kfree(%struct.TYPE_12__*) #1

declare dso_local i64 @scsi_add_host(%struct.Scsi_Host*, i32*) #1

declare dso_local i32 @scsi_scan_host(%struct.Scsi_Host*) #1

declare dso_local i32 @scsi_host_put(%struct.Scsi_Host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

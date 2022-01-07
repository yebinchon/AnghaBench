; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_fdomain.c_fdomain_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_fdomain.c_fdomain_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i32, i32, i32, i32 }
%struct.device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.fdomain = type { i32, i32, i32 }

@fdomain_create.chip_names = internal constant [4 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"TMC-1800\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"TMC-18C50\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"TMC-18C30\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"card has no IRQ assigned\00", align 1
@fdomain_template = common dso_local global i32 0, align 4
@FDOMAIN_REGION_SIZE = common dso_local global i32 0, align 4
@fdomain_work = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"pcmcia\00", align 1
@IRQF_SHARED = common dso_local global i64 0, align 8
@fdomain_irq = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [8 x i8] c"fdomain\00", align 1
@KERN_INFO = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [35 x i8] c"%s chip at 0x%x irq %d SCSI ID %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"TMC-36C70 (PCI bus)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.Scsi_Host* @fdomain_create(i32 %0, i32 %1, i32 %2, %struct.device* %3) #0 {
  %5 = alloca %struct.Scsi_Host*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.device*, align 8
  %10 = alloca %struct.Scsi_Host*, align 8
  %11 = alloca %struct.fdomain*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.device* %3, %struct.device** %9, align 8
  store i64 0, i64* %13, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @fdomain_identify(i32 %14)
  store i32 %15, i32* %12, align 4
  %16 = load i32, i32* %12, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %4
  store %struct.Scsi_Host* null, %struct.Scsi_Host** %5, align 8
  br label %124

19:                                               ; preds = %4
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @fdomain_reset(i32 %20)
  %22 = load i32, i32* %6, align 4
  %23 = call i64 @fdomain_test_loopback(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  store %struct.Scsi_Host* null, %struct.Scsi_Host** %5, align 8
  br label %124

26:                                               ; preds = %19
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %26
  %30 = load %struct.device*, %struct.device** %9, align 8
  %31 = call i32 @dev_err(%struct.device* %30, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  store %struct.Scsi_Host* null, %struct.Scsi_Host** %5, align 8
  br label %124

32:                                               ; preds = %26
  %33 = call %struct.Scsi_Host* @scsi_host_alloc(i32* @fdomain_template, i32 12)
  store %struct.Scsi_Host* %33, %struct.Scsi_Host** %10, align 8
  %34 = load %struct.Scsi_Host*, %struct.Scsi_Host** %10, align 8
  %35 = icmp ne %struct.Scsi_Host* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %32
  store %struct.Scsi_Host* null, %struct.Scsi_Host** %5, align 8
  br label %124

37:                                               ; preds = %32
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %37
  %41 = load i32, i32* %8, align 4
  %42 = and i32 %41, 7
  %43 = load %struct.Scsi_Host*, %struct.Scsi_Host** %10, align 8
  %44 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  br label %45

45:                                               ; preds = %40, %37
  %46 = load i32, i32* %7, align 4
  %47 = load %struct.Scsi_Host*, %struct.Scsi_Host** %10, align 8
  %48 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* %6, align 4
  %50 = load %struct.Scsi_Host*, %struct.Scsi_Host** %10, align 8
  %51 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* @FDOMAIN_REGION_SIZE, align 4
  %53 = load %struct.Scsi_Host*, %struct.Scsi_Host** %10, align 8
  %54 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %53, i32 0, i32 3
  store i32 %52, i32* %54, align 4
  %55 = load %struct.Scsi_Host*, %struct.Scsi_Host** %10, align 8
  %56 = call %struct.fdomain* @shost_priv(%struct.Scsi_Host* %55)
  store %struct.fdomain* %56, %struct.fdomain** %11, align 8
  %57 = load i32, i32* %6, align 4
  %58 = load %struct.fdomain*, %struct.fdomain** %11, align 8
  %59 = getelementptr inbounds %struct.fdomain, %struct.fdomain* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 4
  %60 = load i32, i32* %12, align 4
  %61 = load %struct.fdomain*, %struct.fdomain** %11, align 8
  %62 = getelementptr inbounds %struct.fdomain, %struct.fdomain* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  %63 = load %struct.fdomain*, %struct.fdomain** %11, align 8
  %64 = getelementptr inbounds %struct.fdomain, %struct.fdomain* %63, i32 0, i32 2
  %65 = load i32, i32* @fdomain_work, align 4
  %66 = call i32 @INIT_WORK(i32* %64, i32 %65)
  %67 = load %struct.device*, %struct.device** %9, align 8
  %68 = call i64 @dev_is_pci(%struct.device* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %78, label %70

70:                                               ; preds = %45
  %71 = load %struct.device*, %struct.device** %9, align 8
  %72 = getelementptr inbounds %struct.device, %struct.device* %71, i32 0, i32 0
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @strcmp(i32 %75, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %80, label %78

78:                                               ; preds = %70, %45
  %79 = load i64, i64* @IRQF_SHARED, align 8
  store i64 %79, i64* %13, align 8
  br label %80

80:                                               ; preds = %78, %70
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* @fdomain_irq, align 4
  %83 = load i64, i64* %13, align 8
  %84 = load %struct.fdomain*, %struct.fdomain** %11, align 8
  %85 = call i64 @request_irq(i32 %81, i32 %82, i64 %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), %struct.fdomain* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %80
  br label %121

88:                                               ; preds = %80
  %89 = load i32, i32* @KERN_INFO, align 4
  %90 = load %struct.Scsi_Host*, %struct.Scsi_Host** %10, align 8
  %91 = load %struct.device*, %struct.device** %9, align 8
  %92 = call i64 @dev_is_pci(%struct.device* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %88
  br label %100

95:                                               ; preds = %88
  %96 = load i32, i32* %12, align 4
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds [4 x i8*], [4 x i8*]* @fdomain_create.chip_names, i64 0, i64 %97
  %99 = load i8*, i8** %98, align 8
  br label %100

100:                                              ; preds = %95, %94
  %101 = phi i8* [ getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), %94 ], [ %99, %95 ]
  %102 = load i32, i32* %6, align 4
  %103 = load i32, i32* %7, align 4
  %104 = load %struct.Scsi_Host*, %struct.Scsi_Host** %10, align 8
  %105 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @shost_printk(i32 %89, %struct.Scsi_Host* %90, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0), i8* %101, i32 %102, i32 %103, i32 %106)
  %108 = load %struct.Scsi_Host*, %struct.Scsi_Host** %10, align 8
  %109 = load %struct.device*, %struct.device** %9, align 8
  %110 = call i64 @scsi_add_host(%struct.Scsi_Host* %108, %struct.device* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %100
  br label %117

113:                                              ; preds = %100
  %114 = load %struct.Scsi_Host*, %struct.Scsi_Host** %10, align 8
  %115 = call i32 @scsi_scan_host(%struct.Scsi_Host* %114)
  %116 = load %struct.Scsi_Host*, %struct.Scsi_Host** %10, align 8
  store %struct.Scsi_Host* %116, %struct.Scsi_Host** %5, align 8
  br label %124

117:                                              ; preds = %112
  %118 = load i32, i32* %7, align 4
  %119 = load %struct.fdomain*, %struct.fdomain** %11, align 8
  %120 = call i32 @free_irq(i32 %118, %struct.fdomain* %119)
  br label %121

121:                                              ; preds = %117, %87
  %122 = load %struct.Scsi_Host*, %struct.Scsi_Host** %10, align 8
  %123 = call i32 @scsi_host_put(%struct.Scsi_Host* %122)
  store %struct.Scsi_Host* null, %struct.Scsi_Host** %5, align 8
  br label %124

124:                                              ; preds = %121, %113, %36, %29, %25, %18
  %125 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  ret %struct.Scsi_Host* %125
}

declare dso_local i32 @fdomain_identify(i32) #1

declare dso_local i32 @fdomain_reset(i32) #1

declare dso_local i64 @fdomain_test_loopback(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local %struct.Scsi_Host* @scsi_host_alloc(i32*, i32) #1

declare dso_local %struct.fdomain* @shost_priv(%struct.Scsi_Host*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i64 @dev_is_pci(%struct.device*) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i64 @request_irq(i32, i32, i64, i8*, %struct.fdomain*) #1

declare dso_local i32 @shost_printk(i32, %struct.Scsi_Host*, i8*, i8*, i32, i32, i32) #1

declare dso_local i64 @scsi_add_host(%struct.Scsi_Host*, %struct.device*) #1

declare dso_local i32 @scsi_scan_host(%struct.Scsi_Host*) #1

declare dso_local i32 @free_irq(i32, %struct.fdomain*) #1

declare dso_local i32 @scsi_host_put(%struct.Scsi_Host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

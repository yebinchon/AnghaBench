; ModuleID = '/home/carl/AnghaBench/linux/drivers/ssb/extr_pci.c_ssb_pci_sprom_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ssb/extr_pci.c_ssb_pci_sprom_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssb_bus = type { i32, i8*, i8*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.ssb_sprom = type { i8* }

@.str = private unnamed_addr constant [21 x i8] c"No SPROM available!\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@SSB_SPROM_BASE31 = common dso_local global i8* null, align 8
@SSB_SPROM_BASE1 = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"SPROM offset is 0x%x\0A\00", align 1
@SSB_SPROMSIZE_WORDS_R123 = common dso_local global i8* null, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SSB_SPROMSIZE_WORDS_R4 = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [47 x i8] c"WARNING: Using fallback SPROM failed (err %d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"Using SPROM revision %d provided by platform\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ssb_bus*, %struct.ssb_sprom*)* @ssb_pci_sprom_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssb_pci_sprom_get(%struct.ssb_bus* %0, %struct.ssb_sprom* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ssb_bus*, align 8
  %5 = alloca %struct.ssb_sprom*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.ssb_bus* %0, %struct.ssb_bus** %4, align 8
  store %struct.ssb_sprom* %1, %struct.ssb_sprom** %5, align 8
  %8 = load %struct.ssb_bus*, %struct.ssb_bus** %4, align 8
  %9 = call i32 @ssb_is_sprom_available(%struct.ssb_bus* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %2
  %12 = call i32 @pr_err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* @ENODEV, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %139

15:                                               ; preds = %2
  %16 = load %struct.ssb_bus*, %struct.ssb_bus** %4, align 8
  %17 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %16, i32 0, i32 3
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = icmp ne %struct.TYPE_5__* %19, null
  br i1 %20, label %21, label %56

21:                                               ; preds = %15
  %22 = load %struct.ssb_bus*, %struct.ssb_bus** %4, align 8
  %23 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp sge i32 %28, 31
  br i1 %29, label %30, label %34

30:                                               ; preds = %21
  %31 = load i8*, i8** @SSB_SPROM_BASE31, align 8
  %32 = load %struct.ssb_bus*, %struct.ssb_bus** %4, align 8
  %33 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %32, i32 0, i32 2
  store i8* %31, i8** %33, align 8
  br label %55

34:                                               ; preds = %21
  %35 = load %struct.ssb_bus*, %struct.ssb_bus** %4, align 8
  %36 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp eq i32 %37, 17170
  br i1 %38, label %39, label %50

39:                                               ; preds = %34
  %40 = load %struct.ssb_bus*, %struct.ssb_bus** %4, align 8
  %41 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = and i32 %43, 3
  %45 = icmp eq i32 %44, 2
  br i1 %45, label %46, label %50

46:                                               ; preds = %39
  %47 = load i8*, i8** @SSB_SPROM_BASE31, align 8
  %48 = load %struct.ssb_bus*, %struct.ssb_bus** %4, align 8
  %49 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %48, i32 0, i32 2
  store i8* %47, i8** %49, align 8
  br label %54

50:                                               ; preds = %39, %34
  %51 = load i8*, i8** @SSB_SPROM_BASE1, align 8
  %52 = load %struct.ssb_bus*, %struct.ssb_bus** %4, align 8
  %53 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %52, i32 0, i32 2
  store i8* %51, i8** %53, align 8
  br label %54

54:                                               ; preds = %50, %46
  br label %55

55:                                               ; preds = %54, %30
  br label %60

56:                                               ; preds = %15
  %57 = load i8*, i8** @SSB_SPROM_BASE1, align 8
  %58 = load %struct.ssb_bus*, %struct.ssb_bus** %4, align 8
  %59 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %58, i32 0, i32 2
  store i8* %57, i8** %59, align 8
  br label %60

60:                                               ; preds = %56, %55
  %61 = load %struct.ssb_bus*, %struct.ssb_bus** %4, align 8
  %62 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %61, i32 0, i32 2
  %63 = load i8*, i8** %62, align 8
  %64 = call i32 @pr_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* %63)
  %65 = load i8*, i8** @SSB_SPROMSIZE_WORDS_R123, align 8
  %66 = load i32, i32* @GFP_KERNEL, align 4
  %67 = call i32* @kcalloc(i8* %65, i32 4, i32 %66)
  store i32* %67, i32** %7, align 8
  %68 = load i32*, i32** %7, align 8
  %69 = icmp ne i32* %68, null
  br i1 %69, label %73, label %70

70:                                               ; preds = %60
  %71 = load i32, i32* @ENOMEM, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %3, align 4
  br label %139

73:                                               ; preds = %60
  %74 = load i8*, i8** @SSB_SPROMSIZE_WORDS_R123, align 8
  %75 = load %struct.ssb_bus*, %struct.ssb_bus** %4, align 8
  %76 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %75, i32 0, i32 1
  store i8* %74, i8** %76, align 8
  %77 = load %struct.ssb_bus*, %struct.ssb_bus** %4, align 8
  %78 = load i32*, i32** %7, align 8
  %79 = call i32 @sprom_do_read(%struct.ssb_bus* %77, i32* %78)
  %80 = load i32*, i32** %7, align 8
  %81 = load %struct.ssb_bus*, %struct.ssb_bus** %4, align 8
  %82 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %81, i32 0, i32 1
  %83 = load i8*, i8** %82, align 8
  %84 = call i32 @sprom_check_crc(i32* %80, i8* %83)
  store i32 %84, i32* %6, align 4
  %85 = load i32, i32* %6, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %127

87:                                               ; preds = %73
  %88 = load i32*, i32** %7, align 8
  %89 = call i32 @kfree(i32* %88)
  %90 = load i8*, i8** @SSB_SPROMSIZE_WORDS_R4, align 8
  %91 = load i32, i32* @GFP_KERNEL, align 4
  %92 = call i32* @kcalloc(i8* %90, i32 4, i32 %91)
  store i32* %92, i32** %7, align 8
  %93 = load i32*, i32** %7, align 8
  %94 = icmp ne i32* %93, null
  br i1 %94, label %98, label %95

95:                                               ; preds = %87
  %96 = load i32, i32* @ENOMEM, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %3, align 4
  br label %139

98:                                               ; preds = %87
  %99 = load i8*, i8** @SSB_SPROMSIZE_WORDS_R4, align 8
  %100 = load %struct.ssb_bus*, %struct.ssb_bus** %4, align 8
  %101 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %100, i32 0, i32 1
  store i8* %99, i8** %101, align 8
  %102 = load %struct.ssb_bus*, %struct.ssb_bus** %4, align 8
  %103 = load i32*, i32** %7, align 8
  %104 = call i32 @sprom_do_read(%struct.ssb_bus* %102, i32* %103)
  %105 = load i32*, i32** %7, align 8
  %106 = load %struct.ssb_bus*, %struct.ssb_bus** %4, align 8
  %107 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %106, i32 0, i32 1
  %108 = load i8*, i8** %107, align 8
  %109 = call i32 @sprom_check_crc(i32* %105, i8* %108)
  store i32 %109, i32* %6, align 4
  %110 = load i32, i32* %6, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %126

112:                                              ; preds = %98
  %113 = load %struct.ssb_bus*, %struct.ssb_bus** %4, align 8
  %114 = load %struct.ssb_sprom*, %struct.ssb_sprom** %5, align 8
  %115 = call i32 @ssb_fill_sprom_with_fallback(%struct.ssb_bus* %113, %struct.ssb_sprom* %114)
  store i32 %115, i32* %6, align 4
  %116 = load i32, i32* %6, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %112
  %119 = load i32, i32* %6, align 4
  %120 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %119)
  br label %135

121:                                              ; preds = %112
  %122 = load %struct.ssb_sprom*, %struct.ssb_sprom** %5, align 8
  %123 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %122, i32 0, i32 0
  %124 = load i8*, i8** %123, align 8
  %125 = call i32 @pr_debug(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i8* %124)
  store i32 0, i32* %6, align 4
  br label %135

126:                                              ; preds = %98
  br label %127

127:                                              ; preds = %126, %73
  %128 = load %struct.ssb_bus*, %struct.ssb_bus** %4, align 8
  %129 = load %struct.ssb_sprom*, %struct.ssb_sprom** %5, align 8
  %130 = load i32*, i32** %7, align 8
  %131 = load %struct.ssb_bus*, %struct.ssb_bus** %4, align 8
  %132 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %131, i32 0, i32 1
  %133 = load i8*, i8** %132, align 8
  %134 = call i32 @sprom_extract(%struct.ssb_bus* %128, %struct.ssb_sprom* %129, i32* %130, i8* %133)
  store i32 %134, i32* %6, align 4
  br label %135

135:                                              ; preds = %127, %121, %118
  %136 = load i32*, i32** %7, align 8
  %137 = call i32 @kfree(i32* %136)
  %138 = load i32, i32* %6, align 4
  store i32 %138, i32* %3, align 4
  br label %139

139:                                              ; preds = %135, %95, %70, %11
  %140 = load i32, i32* %3, align 4
  ret i32 %140
}

declare dso_local i32 @ssb_is_sprom_available(%struct.ssb_bus*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @pr_debug(i8*, i8*) #1

declare dso_local i32* @kcalloc(i8*, i32, i32) #1

declare dso_local i32 @sprom_do_read(%struct.ssb_bus*, i32*) #1

declare dso_local i32 @sprom_check_crc(i32*, i8*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @ssb_fill_sprom_with_fallback(%struct.ssb_bus*, %struct.ssb_sprom*) #1

declare dso_local i32 @pr_warn(i8*, ...) #1

declare dso_local i32 @sprom_extract(%struct.ssb_bus*, %struct.ssb_sprom*, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

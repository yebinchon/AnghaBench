; ModuleID = '/home/carl/AnghaBench/linux/drivers/pcmcia/extr_cistpl.c_pcmcia_parse_tuple.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pcmcia/extr_cistpl.c_pcmcia_parse_tuple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i64, i64, i32 }
%struct.TYPE_22__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"parse_tuple failed %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pcmcia_parse_tuple(%struct.TYPE_21__* %0, %struct.TYPE_22__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %4, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %5, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp sgt i64 %9, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %113

17:                                               ; preds = %2
  %18 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  switch i32 %20, label %102 [
    i32 146, label %21
    i32 145, label %21
    i32 148, label %26
    i32 135, label %31
    i32 134, label %31
    i32 133, label %36
    i32 129, label %41
    i32 150, label %46
    i32 138, label %51
    i32 137, label %51
    i32 132, label %56
    i32 139, label %61
    i32 140, label %66
    i32 147, label %71
    i32 149, label %76
    i32 144, label %81
    i32 143, label %81
    i32 128, label %86
    i32 130, label %91
    i32 142, label %96
    i32 141, label %96
    i32 131, label %101
    i32 136, label %101
  ]

21:                                               ; preds = %17, %17
  %22 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %23 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %23, i32 0, i32 15
  %25 = call i32 @parse_device(%struct.TYPE_21__* %22, i32* %24)
  store i32 %25, i32* %6, align 4
  br label %105

26:                                               ; preds = %17
  %27 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %28 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %28, i32 0, i32 14
  %30 = call i32 @parse_checksum(%struct.TYPE_21__* %27, i32* %29)
  store i32 %30, i32* %6, align 4
  br label %105

31:                                               ; preds = %17, %17
  %32 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %33 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %33, i32 0, i32 13
  %35 = call i32 @parse_longlink(%struct.TYPE_21__* %32, i32* %34)
  store i32 %35, i32* %6, align 4
  br label %105

36:                                               ; preds = %17
  %37 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %38 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %38, i32 0, i32 12
  %40 = call i32 @parse_longlink_mfc(%struct.TYPE_21__* %37, i32* %39)
  store i32 %40, i32* %6, align 4
  br label %105

41:                                               ; preds = %17
  %42 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %43 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %43, i32 0, i32 11
  %45 = call i32 @parse_vers_1(%struct.TYPE_21__* %42, i32* %44)
  store i32 %45, i32* %6, align 4
  br label %105

46:                                               ; preds = %17
  %47 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %48 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %48, i32 0, i32 10
  %50 = call i32 @parse_altstr(%struct.TYPE_21__* %47, i32* %49)
  store i32 %50, i32* %6, align 4
  br label %105

51:                                               ; preds = %17, %17
  %52 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %53 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %53, i32 0, i32 9
  %55 = call i32 @parse_jedec(%struct.TYPE_21__* %52, i32* %54)
  store i32 %55, i32* %6, align 4
  br label %105

56:                                               ; preds = %17
  %57 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %58 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %58, i32 0, i32 8
  %60 = call i32 @parse_manfid(%struct.TYPE_21__* %57, i32* %59)
  store i32 %60, i32* %6, align 4
  br label %105

61:                                               ; preds = %17
  %62 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %63 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %63, i32 0, i32 7
  %65 = call i32 @parse_funcid(%struct.TYPE_21__* %62, i32* %64)
  store i32 %65, i32* %6, align 4
  br label %105

66:                                               ; preds = %17
  %67 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %68 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %68, i32 0, i32 6
  %70 = call i32 @parse_funce(%struct.TYPE_21__* %67, i32* %69)
  store i32 %70, i32* %6, align 4
  br label %105

71:                                               ; preds = %17
  %72 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %73 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %73, i32 0, i32 5
  %75 = call i32 @parse_config(%struct.TYPE_21__* %72, i32* %74)
  store i32 %75, i32* %6, align 4
  br label %105

76:                                               ; preds = %17
  %77 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %78 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %78, i32 0, i32 4
  %80 = call i32 @parse_cftable_entry(%struct.TYPE_21__* %77, i32* %79)
  store i32 %80, i32* %6, align 4
  br label %105

81:                                               ; preds = %17, %17
  %82 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %83 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %83, i32 0, i32 3
  %85 = call i32 @parse_device_geo(%struct.TYPE_21__* %82, i32* %84)
  store i32 %85, i32* %6, align 4
  br label %105

86:                                               ; preds = %17
  %87 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %88 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %88, i32 0, i32 2
  %90 = call i32 @parse_vers_2(%struct.TYPE_21__* %87, i32* %89)
  store i32 %90, i32* %6, align 4
  br label %105

91:                                               ; preds = %17
  %92 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %93 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %93, i32 0, i32 1
  %95 = call i32 @parse_org(%struct.TYPE_21__* %92, i32* %94)
  store i32 %95, i32* %6, align 4
  br label %105

96:                                               ; preds = %17, %17
  %97 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %98 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %98, i32 0, i32 0
  %100 = call i32 @parse_format(%struct.TYPE_21__* %97, i32* %99)
  store i32 %100, i32* %6, align 4
  br label %105

101:                                              ; preds = %17, %17
  store i32 0, i32* %6, align 4
  br label %105

102:                                              ; preds = %17
  %103 = load i32, i32* @EINVAL, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %6, align 4
  br label %105

105:                                              ; preds = %102, %101, %96, %91, %86, %81, %76, %71, %66, %61, %56, %51, %46, %41, %36, %31, %26, %21
  %106 = load i32, i32* %6, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %105
  %109 = load i32, i32* %6, align 4
  %110 = call i32 @pr_debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %109)
  br label %111

111:                                              ; preds = %108, %105
  %112 = load i32, i32* %6, align 4
  store i32 %112, i32* %3, align 4
  br label %113

113:                                              ; preds = %111, %14
  %114 = load i32, i32* %3, align 4
  ret i32 %114
}

declare dso_local i32 @parse_device(%struct.TYPE_21__*, i32*) #1

declare dso_local i32 @parse_checksum(%struct.TYPE_21__*, i32*) #1

declare dso_local i32 @parse_longlink(%struct.TYPE_21__*, i32*) #1

declare dso_local i32 @parse_longlink_mfc(%struct.TYPE_21__*, i32*) #1

declare dso_local i32 @parse_vers_1(%struct.TYPE_21__*, i32*) #1

declare dso_local i32 @parse_altstr(%struct.TYPE_21__*, i32*) #1

declare dso_local i32 @parse_jedec(%struct.TYPE_21__*, i32*) #1

declare dso_local i32 @parse_manfid(%struct.TYPE_21__*, i32*) #1

declare dso_local i32 @parse_funcid(%struct.TYPE_21__*, i32*) #1

declare dso_local i32 @parse_funce(%struct.TYPE_21__*, i32*) #1

declare dso_local i32 @parse_config(%struct.TYPE_21__*, i32*) #1

declare dso_local i32 @parse_cftable_entry(%struct.TYPE_21__*, i32*) #1

declare dso_local i32 @parse_device_geo(%struct.TYPE_21__*, i32*) #1

declare dso_local i32 @parse_vers_2(%struct.TYPE_21__*, i32*) #1

declare dso_local i32 @parse_org(%struct.TYPE_21__*, i32*) #1

declare dso_local i32 @parse_format(%struct.TYPE_21__*, i32*) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

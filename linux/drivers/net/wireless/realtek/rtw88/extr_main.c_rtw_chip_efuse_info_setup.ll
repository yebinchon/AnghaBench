; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_main.c_rtw_chip_efuse_info_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_main.c_rtw_chip_efuse_info_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { i32, %struct.rtw_efuse }
%struct.rtw_efuse = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtw_dev*)* @rtw_chip_efuse_info_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtw_chip_efuse_info_setup(%struct.rtw_dev* %0) #0 {
  %2 = alloca %struct.rtw_dev*, align 8
  %3 = alloca %struct.rtw_efuse*, align 8
  %4 = alloca i32, align 4
  store %struct.rtw_dev* %0, %struct.rtw_dev** %2, align 8
  %5 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %6 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %5, i32 0, i32 1
  store %struct.rtw_efuse* %6, %struct.rtw_efuse** %3, align 8
  %7 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %8 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %7, i32 0, i32 0
  %9 = call i32 @mutex_lock(i32* %8)
  %10 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %11 = call i32 @rtw_chip_efuse_enable(%struct.rtw_dev* %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %158

15:                                               ; preds = %1
  %16 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %17 = call i32 @rtw_parse_efuse_map(%struct.rtw_dev* %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  br label %158

21:                                               ; preds = %15
  %22 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %23 = call i32 @rtw_dump_hw_feature(%struct.rtw_dev* %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  br label %158

27:                                               ; preds = %21
  %28 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %29 = call i32 @rtw_check_supported_rfe(%struct.rtw_dev* %28)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  br label %158

33:                                               ; preds = %27
  %34 = load %struct.rtw_efuse*, %struct.rtw_efuse** %3, align 8
  %35 = getelementptr inbounds %struct.rtw_efuse, %struct.rtw_efuse* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %36, 255
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load %struct.rtw_efuse*, %struct.rtw_efuse** %3, align 8
  %40 = getelementptr inbounds %struct.rtw_efuse, %struct.rtw_efuse* %39, i32 0, i32 0
  store i32 0, i32* %40, align 4
  br label %41

41:                                               ; preds = %38, %33
  %42 = load %struct.rtw_efuse*, %struct.rtw_efuse** %3, align 8
  %43 = getelementptr inbounds %struct.rtw_efuse, %struct.rtw_efuse* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = icmp eq i32 %44, 255
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load %struct.rtw_efuse*, %struct.rtw_efuse** %3, align 8
  %48 = getelementptr inbounds %struct.rtw_efuse, %struct.rtw_efuse* %47, i32 0, i32 1
  store i32 0, i32* %48, align 4
  br label %49

49:                                               ; preds = %46, %41
  %50 = load %struct.rtw_efuse*, %struct.rtw_efuse** %3, align 8
  %51 = getelementptr inbounds %struct.rtw_efuse, %struct.rtw_efuse* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = icmp eq i32 %52, 255
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load %struct.rtw_efuse*, %struct.rtw_efuse** %3, align 8
  %56 = getelementptr inbounds %struct.rtw_efuse, %struct.rtw_efuse* %55, i32 0, i32 2
  store i32 0, i32* %56, align 4
  br label %57

57:                                               ; preds = %54, %49
  %58 = load %struct.rtw_efuse*, %struct.rtw_efuse** %3, align 8
  %59 = getelementptr inbounds %struct.rtw_efuse, %struct.rtw_efuse* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = icmp eq i32 %60, 255
  br i1 %61, label %62, label %65

62:                                               ; preds = %57
  %63 = load %struct.rtw_efuse*, %struct.rtw_efuse** %3, align 8
  %64 = getelementptr inbounds %struct.rtw_efuse, %struct.rtw_efuse* %63, i32 0, i32 3
  store i32 0, i32* %64, align 4
  br label %65

65:                                               ; preds = %62, %57
  %66 = load %struct.rtw_efuse*, %struct.rtw_efuse** %3, align 8
  %67 = getelementptr inbounds %struct.rtw_efuse, %struct.rtw_efuse* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 4
  %69 = icmp eq i32 %68, 255
  br i1 %69, label %70, label %73

70:                                               ; preds = %65
  %71 = load %struct.rtw_efuse*, %struct.rtw_efuse** %3, align 8
  %72 = getelementptr inbounds %struct.rtw_efuse, %struct.rtw_efuse* %71, i32 0, i32 4
  store i32 0, i32* %72, align 4
  br label %73

73:                                               ; preds = %70, %65
  %74 = load %struct.rtw_efuse*, %struct.rtw_efuse** %3, align 8
  %75 = getelementptr inbounds %struct.rtw_efuse, %struct.rtw_efuse* %74, i32 0, i32 5
  %76 = load i32, i32* %75, align 4
  %77 = icmp eq i32 %76, 255
  br i1 %77, label %78, label %81

78:                                               ; preds = %73
  %79 = load %struct.rtw_efuse*, %struct.rtw_efuse** %3, align 8
  %80 = getelementptr inbounds %struct.rtw_efuse, %struct.rtw_efuse* %79, i32 0, i32 5
  store i32 127, i32* %80, align 4
  br label %81

81:                                               ; preds = %78, %73
  %82 = load %struct.rtw_efuse*, %struct.rtw_efuse** %3, align 8
  %83 = getelementptr inbounds %struct.rtw_efuse, %struct.rtw_efuse* %82, i32 0, i32 6
  %84 = load i32, i32* %83, align 4
  %85 = icmp eq i32 %84, 255
  br i1 %85, label %86, label %89

86:                                               ; preds = %81
  %87 = load %struct.rtw_efuse*, %struct.rtw_efuse** %3, align 8
  %88 = getelementptr inbounds %struct.rtw_efuse, %struct.rtw_efuse* %87, i32 0, i32 6
  store i32 0, i32* %88, align 4
  br label %89

89:                                               ; preds = %86, %81
  %90 = load %struct.rtw_efuse*, %struct.rtw_efuse** %3, align 8
  %91 = getelementptr inbounds %struct.rtw_efuse, %struct.rtw_efuse* %90, i32 0, i32 7
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @BIT(i32 0)
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %89
  %97 = load %struct.rtw_efuse*, %struct.rtw_efuse** %3, align 8
  %98 = getelementptr inbounds %struct.rtw_efuse, %struct.rtw_efuse* %97, i32 0, i32 8
  store i32 1, i32* %98, align 4
  br label %99

99:                                               ; preds = %96, %89
  %100 = load %struct.rtw_efuse*, %struct.rtw_efuse** %3, align 8
  %101 = getelementptr inbounds %struct.rtw_efuse, %struct.rtw_efuse* %100, i32 0, i32 9
  %102 = load i32, i32* %101, align 4
  %103 = icmp eq i32 %102, 255
  br i1 %103, label %104, label %107

104:                                              ; preds = %99
  %105 = load %struct.rtw_efuse*, %struct.rtw_efuse** %3, align 8
  %106 = getelementptr inbounds %struct.rtw_efuse, %struct.rtw_efuse* %105, i32 0, i32 9
  store i32 0, i32* %106, align 4
  br label %107

107:                                              ; preds = %104, %99
  %108 = load %struct.rtw_efuse*, %struct.rtw_efuse** %3, align 8
  %109 = getelementptr inbounds %struct.rtw_efuse, %struct.rtw_efuse* %108, i32 0, i32 6
  %110 = load i32, i32* %109, align 4
  %111 = and i32 %110, 224
  %112 = icmp eq i32 %111, 32
  %113 = zext i1 %112 to i32
  %114 = load %struct.rtw_efuse*, %struct.rtw_efuse** %3, align 8
  %115 = getelementptr inbounds %struct.rtw_efuse, %struct.rtw_efuse* %114, i32 0, i32 10
  store i32 %113, i32* %115, align 4
  %116 = load %struct.rtw_efuse*, %struct.rtw_efuse** %3, align 8
  %117 = getelementptr inbounds %struct.rtw_efuse, %struct.rtw_efuse* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @BIT(i32 4)
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  %122 = zext i1 %121 to i64
  %123 = select i1 %121, i32 1, i32 0
  %124 = load %struct.rtw_efuse*, %struct.rtw_efuse** %3, align 8
  %125 = getelementptr inbounds %struct.rtw_efuse, %struct.rtw_efuse* %124, i32 0, i32 11
  store i32 %123, i32* %125, align 4
  %126 = load %struct.rtw_efuse*, %struct.rtw_efuse** %3, align 8
  %127 = getelementptr inbounds %struct.rtw_efuse, %struct.rtw_efuse* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @BIT(i32 3)
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  %132 = zext i1 %131 to i64
  %133 = select i1 %131, i32 1, i32 0
  %134 = load %struct.rtw_efuse*, %struct.rtw_efuse** %3, align 8
  %135 = getelementptr inbounds %struct.rtw_efuse, %struct.rtw_efuse* %134, i32 0, i32 12
  store i32 %133, i32* %135, align 4
  %136 = load %struct.rtw_efuse*, %struct.rtw_efuse** %3, align 8
  %137 = getelementptr inbounds %struct.rtw_efuse, %struct.rtw_efuse* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @BIT(i32 0)
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  %142 = zext i1 %141 to i64
  %143 = select i1 %141, i32 1, i32 0
  %144 = load %struct.rtw_efuse*, %struct.rtw_efuse** %3, align 8
  %145 = getelementptr inbounds %struct.rtw_efuse, %struct.rtw_efuse* %144, i32 0, i32 13
  store i32 %143, i32* %145, align 4
  %146 = load %struct.rtw_efuse*, %struct.rtw_efuse** %3, align 8
  %147 = getelementptr inbounds %struct.rtw_efuse, %struct.rtw_efuse* %146, i32 0, i32 4
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @BIT(i32 3)
  %150 = and i32 %148, %149
  %151 = icmp ne i32 %150, 0
  %152 = zext i1 %151 to i64
  %153 = select i1 %151, i32 1, i32 0
  %154 = load %struct.rtw_efuse*, %struct.rtw_efuse** %3, align 8
  %155 = getelementptr inbounds %struct.rtw_efuse, %struct.rtw_efuse* %154, i32 0, i32 12
  store i32 %153, i32* %155, align 4
  %156 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %157 = call i32 @rtw_chip_efuse_disable(%struct.rtw_dev* %156)
  br label %158

158:                                              ; preds = %107, %32, %26, %20, %14
  %159 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %160 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %159, i32 0, i32 0
  %161 = call i32 @mutex_unlock(i32* %160)
  %162 = load i32, i32* %4, align 4
  ret i32 %162
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @rtw_chip_efuse_enable(%struct.rtw_dev*) #1

declare dso_local i32 @rtw_parse_efuse_map(%struct.rtw_dev*) #1

declare dso_local i32 @rtw_dump_hw_feature(%struct.rtw_dev*) #1

declare dso_local i32 @rtw_check_supported_rfe(%struct.rtw_dev*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @rtw_chip_efuse_disable(%struct.rtw_dev*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

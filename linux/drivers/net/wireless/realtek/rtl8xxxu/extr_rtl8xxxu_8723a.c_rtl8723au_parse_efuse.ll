; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl8xxxu/extr_rtl8xxxu_8723a.c_rtl8723au_parse_efuse.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl8xxxu/extr_rtl8xxxu_8723a.c_rtl8723au_parse_efuse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl8xxxu_priv = type { i32, i32, %struct.TYPE_4__*, i32*, %struct.TYPE_3__, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.rtl8723au_efuse }
%struct.rtl8723au_efuse = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@rtl8723a_power_base = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"Vendor: %.7s\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Product: %.41s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtl8xxxu_priv*)* @rtl8723au_parse_efuse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl8723au_parse_efuse(%struct.rtl8xxxu_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rtl8xxxu_priv*, align 8
  %4 = alloca %struct.rtl8723au_efuse*, align 8
  store %struct.rtl8xxxu_priv* %0, %struct.rtl8xxxu_priv** %3, align 8
  %5 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %6 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %5, i32 0, i32 4
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  store %struct.rtl8723au_efuse* %7, %struct.rtl8723au_efuse** %4, align 8
  %8 = load %struct.rtl8723au_efuse*, %struct.rtl8723au_efuse** %4, align 8
  %9 = getelementptr inbounds %struct.rtl8723au_efuse, %struct.rtl8723au_efuse* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = call i64 @cpu_to_le16(i32 33065)
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %116

16:                                               ; preds = %1
  %17 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %18 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %17, i32 0, i32 13
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.rtl8723au_efuse*, %struct.rtl8723au_efuse** %4, align 8
  %21 = getelementptr inbounds %struct.rtl8723au_efuse, %struct.rtl8723au_efuse* %20, i32 0, i32 13
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @ether_addr_copy(i32 %19, i32 %22)
  %24 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %25 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %24, i32 0, i32 12
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.rtl8723au_efuse*, %struct.rtl8723au_efuse** %4, align 8
  %28 = getelementptr inbounds %struct.rtl8723au_efuse, %struct.rtl8723au_efuse* %27, i32 0, i32 12
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @memcpy(i32 %26, i32 %29, i32 4)
  %31 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %32 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %31, i32 0, i32 11
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.rtl8723au_efuse*, %struct.rtl8723au_efuse** %4, align 8
  %35 = getelementptr inbounds %struct.rtl8723au_efuse, %struct.rtl8723au_efuse* %34, i32 0, i32 11
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @memcpy(i32 %33, i32 %36, i32 4)
  %38 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %39 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %38, i32 0, i32 10
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.rtl8723au_efuse*, %struct.rtl8723au_efuse** %4, align 8
  %42 = getelementptr inbounds %struct.rtl8723au_efuse, %struct.rtl8723au_efuse* %41, i32 0, i32 10
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @memcpy(i32 %40, i32 %43, i32 4)
  %45 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %46 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %45, i32 0, i32 9
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.rtl8723au_efuse*, %struct.rtl8723au_efuse** %4, align 8
  %49 = getelementptr inbounds %struct.rtl8723au_efuse, %struct.rtl8723au_efuse* %48, i32 0, i32 9
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @memcpy(i32 %47, i32 %50, i32 4)
  %52 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %53 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %52, i32 0, i32 8
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.rtl8723au_efuse*, %struct.rtl8723au_efuse** %4, align 8
  %56 = getelementptr inbounds %struct.rtl8723au_efuse, %struct.rtl8723au_efuse* %55, i32 0, i32 8
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @memcpy(i32 %54, i32 %57, i32 4)
  %59 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %60 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %59, i32 0, i32 7
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.rtl8723au_efuse*, %struct.rtl8723au_efuse** %4, align 8
  %63 = getelementptr inbounds %struct.rtl8723au_efuse, %struct.rtl8723au_efuse* %62, i32 0, i32 7
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @memcpy(i32 %61, i32 %64, i32 4)
  %66 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %67 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %66, i32 0, i32 6
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.rtl8723au_efuse*, %struct.rtl8723au_efuse** %4, align 8
  %70 = getelementptr inbounds %struct.rtl8723au_efuse, %struct.rtl8723au_efuse* %69, i32 0, i32 6
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @memcpy(i32 %68, i32 %71, i32 4)
  %73 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %74 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %73, i32 0, i32 5
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.rtl8723au_efuse*, %struct.rtl8723au_efuse** %4, align 8
  %77 = getelementptr inbounds %struct.rtl8723au_efuse, %struct.rtl8723au_efuse* %76, i32 0, i32 5
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @memcpy(i32 %75, i32 %78, i32 4)
  %80 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %81 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %80, i32 0, i32 4
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.rtl8723au_efuse, %struct.rtl8723au_efuse* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = icmp sge i32 %84, 1
  br i1 %85, label %86, label %97

86:                                               ; preds = %16
  %87 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %88 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %87, i32 0, i32 0
  store i32 1, i32* %88, align 8
  %89 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %90 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %89, i32 0, i32 4
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.rtl8723au_efuse, %struct.rtl8723au_efuse* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = and i32 %93, 63
  %95 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %96 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %95, i32 0, i32 1
  store i32 %94, i32* %96, align 4
  br label %97

97:                                               ; preds = %86, %16
  %98 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %99 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %98, i32 0, i32 3
  store i32* @rtl8723a_power_base, i32** %99, align 8
  %100 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %101 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %100, i32 0, i32 2
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = load %struct.rtl8723au_efuse*, %struct.rtl8723au_efuse** %4, align 8
  %105 = getelementptr inbounds %struct.rtl8723au_efuse, %struct.rtl8723au_efuse* %104, i32 0, i32 4
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @dev_info(i32* %103, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %106)
  %108 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %109 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %108, i32 0, i32 2
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  %112 = load %struct.rtl8723au_efuse*, %struct.rtl8723au_efuse** %4, align 8
  %113 = getelementptr inbounds %struct.rtl8723au_efuse, %struct.rtl8723au_efuse* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @dev_info(i32* %111, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %114)
  store i32 0, i32* %2, align 4
  br label %116

116:                                              ; preds = %97, %13
  %117 = load i32, i32* %2, align 4
  ret i32 %117
}

declare dso_local i64 @cpu_to_le16(i32) #1

declare dso_local i32 @ether_addr_copy(i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

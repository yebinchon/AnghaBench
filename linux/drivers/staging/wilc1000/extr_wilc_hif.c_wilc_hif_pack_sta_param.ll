; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_hif.c_wilc_hif_pack_sta_param.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_hif.c_wilc_hif_pack_sta_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.station_parameters = type { i64, i32, i32, i64, i64*, i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, %struct.station_parameters*)* @wilc_hif_pack_sta_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wilc_hif_pack_sta_param(i32* %0, i32* %1, %struct.station_parameters* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.station_parameters*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.station_parameters* %2, %struct.station_parameters** %6, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = call i32 @ether_addr_copy(i32* %7, i32* %8)
  %10 = load i32, i32* @ETH_ALEN, align 4
  %11 = load i32*, i32** %4, align 8
  %12 = sext i32 %10 to i64
  %13 = getelementptr inbounds i32, i32* %11, i64 %12
  store i32* %13, i32** %4, align 8
  %14 = load %struct.station_parameters*, %struct.station_parameters** %6, align 8
  %15 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %14, i32 0, i32 5
  %16 = load i32, i32* %15, align 8
  %17 = load i32*, i32** %4, align 8
  %18 = call i32 @put_unaligned_le16(i32 %16, i32* %17)
  %19 = load i32*, i32** %4, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 2
  store i32* %20, i32** %4, align 8
  %21 = load %struct.station_parameters*, %struct.station_parameters** %6, align 8
  %22 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = trunc i64 %23 to i32
  %25 = load i32*, i32** %4, align 8
  %26 = getelementptr inbounds i32, i32* %25, i32 1
  store i32* %26, i32** %4, align 8
  store i32 %24, i32* %25, align 4
  %27 = load %struct.station_parameters*, %struct.station_parameters** %6, align 8
  %28 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp sgt i64 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %3
  %32 = load i32*, i32** %4, align 8
  %33 = load %struct.station_parameters*, %struct.station_parameters** %6, align 8
  %34 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %33, i32 0, i32 4
  %35 = load i64*, i64** %34, align 8
  %36 = load %struct.station_parameters*, %struct.station_parameters** %6, align 8
  %37 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = trunc i64 %38 to i32
  %40 = call i32 @memcpy(i32* %32, i64* %35, i32 %39)
  br label %41

41:                                               ; preds = %31, %3
  %42 = load %struct.station_parameters*, %struct.station_parameters** %6, align 8
  %43 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i32*, i32** %4, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 %44
  store i32* %46, i32** %4, align 8
  %47 = load %struct.station_parameters*, %struct.station_parameters** %6, align 8
  %48 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %41
  %52 = load i32*, i32** %4, align 8
  %53 = getelementptr inbounds i32, i32* %52, i32 1
  store i32* %53, i32** %4, align 8
  store i32 1, i32* %52, align 4
  %54 = load i32*, i32** %4, align 8
  %55 = load %struct.station_parameters*, %struct.station_parameters** %6, align 8
  %56 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %55, i32 0, i32 3
  %57 = call i32 @memcpy(i32* %54, i64* %56, i32 4)
  br label %61

58:                                               ; preds = %41
  %59 = load i32*, i32** %4, align 8
  %60 = getelementptr inbounds i32, i32* %59, i32 1
  store i32* %60, i32** %4, align 8
  store i32 0, i32* %59, align 4
  br label %61

61:                                               ; preds = %58, %51
  %62 = load i32*, i32** %4, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 4
  store i32* %63, i32** %4, align 8
  %64 = load %struct.station_parameters*, %struct.station_parameters** %6, align 8
  %65 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load i32*, i32** %4, align 8
  %68 = call i32 @put_unaligned_le16(i32 %66, i32* %67)
  %69 = load i32*, i32** %4, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 2
  store i32* %70, i32** %4, align 8
  %71 = load %struct.station_parameters*, %struct.station_parameters** %6, align 8
  %72 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load i32*, i32** %4, align 8
  %75 = call i32 @put_unaligned_le16(i32 %73, i32* %74)
  ret void
}

declare dso_local i32 @ether_addr_copy(i32*, i32*) #1

declare dso_local i32 @put_unaligned_le16(i32, i32*) #1

declare dso_local i32 @memcpy(i32*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

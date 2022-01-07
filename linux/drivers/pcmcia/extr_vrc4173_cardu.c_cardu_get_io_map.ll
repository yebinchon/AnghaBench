; ModuleID = '/home/carl/AnghaBench/linux/drivers/pcmcia/extr_vrc4173_cardu.c_cardu_get_io_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pcmcia/extr_vrc4173_cardu.c_cardu_get_io_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pccard_io_map = type { i32, i32, i8*, i8* }

@cardu_sockets = common dso_local global i32* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@IO_WIN_CNT = common dso_local global i32 0, align 4
@ADR_WIN_EN = common dso_local global i32 0, align 4
@MAP_ACTIVE = common dso_local global i32 0, align 4
@MAP_AUTOSZ = common dso_local global i32 0, align 4
@MAP_16BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.pccard_io_map*)* @cardu_get_io_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cardu_get_io_map(i32 %0, %struct.pccard_io_map* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.pccard_io_map*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.pccard_io_map* %1, %struct.pccard_io_map** %5, align 8
  %10 = load i32*, i32** @cardu_sockets, align 8
  %11 = load i32, i32* %4, align 4
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds i32, i32* %10, i64 %12
  store i32* %13, i32** %6, align 8
  %14 = load %struct.pccard_io_map*, %struct.pccard_io_map** %5, align 8
  %15 = getelementptr inbounds %struct.pccard_io_map, %struct.pccard_io_map* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp sgt i32 %17, 1
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %78

22:                                               ; preds = %2
  %23 = load i32*, i32** %6, align 8
  %24 = load i32, i32* %9, align 4
  %25 = call i32 @IO_WIN_SA(i32 %24)
  %26 = call i8* @exca_readw(i32* %23, i32 %25)
  %27 = load %struct.pccard_io_map*, %struct.pccard_io_map** %5, align 8
  %28 = getelementptr inbounds %struct.pccard_io_map, %struct.pccard_io_map* %27, i32 0, i32 3
  store i8* %26, i8** %28, align 8
  %29 = load i32*, i32** %6, align 8
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @IO_WIN_EA(i32 %30)
  %32 = call i8* @exca_readw(i32* %29, i32 %31)
  %33 = load %struct.pccard_io_map*, %struct.pccard_io_map** %5, align 8
  %34 = getelementptr inbounds %struct.pccard_io_map, %struct.pccard_io_map* %33, i32 0, i32 2
  store i8* %32, i8** %34, align 8
  %35 = load i32*, i32** %6, align 8
  %36 = load i32, i32* @IO_WIN_CNT, align 4
  %37 = call i32 @exca_readb(i32* %35, i32 %36)
  store i32 %37, i32* %7, align 4
  %38 = load i32*, i32** %6, align 8
  %39 = load i32, i32* @ADR_WIN_EN, align 4
  %40 = call i32 @exca_readb(i32* %38, i32 %39)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @IO_WIN_EN(i32 %42)
  %44 = and i32 %41, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %22
  %47 = load i32, i32* @MAP_ACTIVE, align 4
  br label %49

48:                                               ; preds = %22
  br label %49

49:                                               ; preds = %48, %46
  %50 = phi i32 [ %47, %46 ], [ 0, %48 ]
  %51 = load %struct.pccard_io_map*, %struct.pccard_io_map** %5, align 8
  %52 = getelementptr inbounds %struct.pccard_io_map, %struct.pccard_io_map* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* %9, align 4
  %55 = call i32 @IO_WIN_DATA_AUTOSZ(i32 %54)
  %56 = and i32 %53, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %49
  %59 = load i32, i32* @MAP_AUTOSZ, align 4
  %60 = load %struct.pccard_io_map*, %struct.pccard_io_map** %5, align 8
  %61 = getelementptr inbounds %struct.pccard_io_map, %struct.pccard_io_map* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = or i32 %62, %59
  store i32 %63, i32* %61, align 4
  br label %77

64:                                               ; preds = %49
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* %9, align 4
  %67 = call i32 @IO_WIN_DATA_16BIT(i32 %66)
  %68 = and i32 %65, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %64
  %71 = load i32, i32* @MAP_16BIT, align 4
  %72 = load %struct.pccard_io_map*, %struct.pccard_io_map** %5, align 8
  %73 = getelementptr inbounds %struct.pccard_io_map, %struct.pccard_io_map* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = or i32 %74, %71
  store i32 %75, i32* %73, align 4
  br label %76

76:                                               ; preds = %70, %64
  br label %77

77:                                               ; preds = %76, %58
  store i32 0, i32* %3, align 4
  br label %78

78:                                               ; preds = %77, %19
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i8* @exca_readw(i32*, i32) #1

declare dso_local i32 @IO_WIN_SA(i32) #1

declare dso_local i32 @IO_WIN_EA(i32) #1

declare dso_local i32 @exca_readb(i32*, i32) #1

declare dso_local i32 @IO_WIN_EN(i32) #1

declare dso_local i32 @IO_WIN_DATA_AUTOSZ(i32) #1

declare dso_local i32 @IO_WIN_DATA_16BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

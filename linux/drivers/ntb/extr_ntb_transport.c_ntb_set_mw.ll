; ModuleID = '/home/carl/AnghaBench/linux/drivers/ntb/extr_ntb_transport.c_ntb_set_mw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ntb/extr_ntb_transport.c_ntb_set_mw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntb_transport_ctx = type { %struct.TYPE_3__*, %struct.ntb_transport_mw* }
%struct.TYPE_3__ = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }
%struct.ntb_transport_mw = type { i64, i64, i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@PIDX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Unable to alloc aligned MW buff\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Unable to set mw%d translation\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ntb_transport_ctx*, i32, i32)* @ntb_set_mw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ntb_set_mw(%struct.ntb_transport_ctx* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ntb_transport_ctx*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ntb_transport_mw*, align 8
  %9 = alloca %struct.pci_dev*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ntb_transport_ctx* %0, %struct.ntb_transport_ctx** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %15 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %5, align 8
  %16 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %15, i32 0, i32 1
  %17 = load %struct.ntb_transport_mw*, %struct.ntb_transport_mw** %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.ntb_transport_mw, %struct.ntb_transport_mw* %17, i64 %19
  store %struct.ntb_transport_mw* %20, %struct.ntb_transport_mw** %8, align 8
  %21 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %5, align 8
  %22 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load %struct.pci_dev*, %struct.pci_dev** %24, align 8
  store %struct.pci_dev* %25, %struct.pci_dev** %9, align 8
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %3
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %131

31:                                               ; preds = %3
  %32 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %5, align 8
  %33 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %32, i32 0, i32 0
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = load i32, i32* @PIDX, align 4
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @ntb_mw_get_align(%struct.TYPE_3__* %34, i32 %35, i32 %36, i32* %12, i32* %13, i32* null)
  store i32 %37, i32* %14, align 4
  %38 = load i32, i32* %14, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %31
  %41 = load i32, i32* %14, align 4
  store i32 %41, i32* %4, align 4
  br label %131

42:                                               ; preds = %31
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* %13, align 4
  %45 = call i64 @round_up(i32 %43, i32 %44)
  store i64 %45, i64* %10, align 8
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* %12, align 4
  %48 = call i64 @round_up(i32 %46, i32 %47)
  store i64 %48, i64* %11, align 8
  %49 = load %struct.ntb_transport_mw*, %struct.ntb_transport_mw** %8, align 8
  %50 = getelementptr inbounds %struct.ntb_transport_mw, %struct.ntb_transport_mw* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* %10, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %42
  store i32 0, i32* %4, align 4
  br label %131

55:                                               ; preds = %42
  %56 = load %struct.ntb_transport_mw*, %struct.ntb_transport_mw** %8, align 8
  %57 = getelementptr inbounds %struct.ntb_transport_mw, %struct.ntb_transport_mw* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %55
  %61 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %5, align 8
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @ntb_free_mw(%struct.ntb_transport_ctx* %61, i32 %62)
  br label %64

64:                                               ; preds = %60, %55
  %65 = load i64, i64* %10, align 8
  %66 = load %struct.ntb_transport_mw*, %struct.ntb_transport_mw** %8, align 8
  %67 = getelementptr inbounds %struct.ntb_transport_mw, %struct.ntb_transport_mw* %66, i32 0, i32 0
  store i64 %65, i64* %67, align 8
  %68 = load i64, i64* %11, align 8
  %69 = load %struct.ntb_transport_mw*, %struct.ntb_transport_mw** %8, align 8
  %70 = getelementptr inbounds %struct.ntb_transport_mw, %struct.ntb_transport_mw* %69, i32 0, i32 1
  store i64 %68, i64* %70, align 8
  %71 = load i64, i64* %11, align 8
  %72 = load %struct.ntb_transport_mw*, %struct.ntb_transport_mw** %8, align 8
  %73 = getelementptr inbounds %struct.ntb_transport_mw, %struct.ntb_transport_mw* %72, i32 0, i32 2
  store i64 %71, i64* %73, align 8
  %74 = load %struct.ntb_transport_mw*, %struct.ntb_transport_mw** %8, align 8
  %75 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %76 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %75, i32 0, i32 0
  %77 = load i32, i32* %12, align 4
  %78 = call i32 @ntb_alloc_mw_buffer(%struct.ntb_transport_mw* %74, i32* %76, i32 %77)
  store i32 %78, i32* %14, align 4
  %79 = load i32, i32* %14, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %105

81:                                               ; preds = %64
  %82 = load %struct.ntb_transport_mw*, %struct.ntb_transport_mw** %8, align 8
  %83 = getelementptr inbounds %struct.ntb_transport_mw, %struct.ntb_transport_mw* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = mul i64 %84, 2
  store i64 %85, i64* %83, align 8
  %86 = load %struct.ntb_transport_mw*, %struct.ntb_transport_mw** %8, align 8
  %87 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %88 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %87, i32 0, i32 0
  %89 = load i32, i32* %12, align 4
  %90 = call i32 @ntb_alloc_mw_buffer(%struct.ntb_transport_mw* %86, i32* %88, i32 %89)
  store i32 %90, i32* %14, align 4
  %91 = load i32, i32* %14, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %104

93:                                               ; preds = %81
  %94 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %95 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %94, i32 0, i32 0
  %96 = call i32 (i32*, i8*, ...) @dev_err(i32* %95, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %97 = load %struct.ntb_transport_mw*, %struct.ntb_transport_mw** %8, align 8
  %98 = getelementptr inbounds %struct.ntb_transport_mw, %struct.ntb_transport_mw* %97, i32 0, i32 0
  store i64 0, i64* %98, align 8
  %99 = load %struct.ntb_transport_mw*, %struct.ntb_transport_mw** %8, align 8
  %100 = getelementptr inbounds %struct.ntb_transport_mw, %struct.ntb_transport_mw* %99, i32 0, i32 1
  store i64 0, i64* %100, align 8
  %101 = load %struct.ntb_transport_mw*, %struct.ntb_transport_mw** %8, align 8
  %102 = getelementptr inbounds %struct.ntb_transport_mw, %struct.ntb_transport_mw* %101, i32 0, i32 2
  store i64 0, i64* %102, align 8
  %103 = load i32, i32* %14, align 4
  store i32 %103, i32* %4, align 4
  br label %131

104:                                              ; preds = %81
  br label %105

105:                                              ; preds = %104, %64
  %106 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %5, align 8
  %107 = getelementptr inbounds %struct.ntb_transport_ctx, %struct.ntb_transport_ctx* %106, i32 0, i32 0
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %107, align 8
  %109 = load i32, i32* @PIDX, align 4
  %110 = load i32, i32* %6, align 4
  %111 = load %struct.ntb_transport_mw*, %struct.ntb_transport_mw** %8, align 8
  %112 = getelementptr inbounds %struct.ntb_transport_mw, %struct.ntb_transport_mw* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.ntb_transport_mw*, %struct.ntb_transport_mw** %8, align 8
  %115 = getelementptr inbounds %struct.ntb_transport_mw, %struct.ntb_transport_mw* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = call i32 @ntb_mw_set_trans(%struct.TYPE_3__* %108, i32 %109, i32 %110, i32 %113, i64 %116)
  store i32 %117, i32* %14, align 4
  %118 = load i32, i32* %14, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %130

120:                                              ; preds = %105
  %121 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %122 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %121, i32 0, i32 0
  %123 = load i32, i32* %6, align 4
  %124 = call i32 (i32*, i8*, ...) @dev_err(i32* %122, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %123)
  %125 = load %struct.ntb_transport_ctx*, %struct.ntb_transport_ctx** %5, align 8
  %126 = load i32, i32* %6, align 4
  %127 = call i32 @ntb_free_mw(%struct.ntb_transport_ctx* %125, i32 %126)
  %128 = load i32, i32* @EIO, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %4, align 4
  br label %131

130:                                              ; preds = %105
  store i32 0, i32* %4, align 4
  br label %131

131:                                              ; preds = %130, %120, %93, %54, %40, %28
  %132 = load i32, i32* %4, align 4
  ret i32 %132
}

declare dso_local i32 @ntb_mw_get_align(%struct.TYPE_3__*, i32, i32, i32*, i32*, i32*) #1

declare dso_local i64 @round_up(i32, i32) #1

declare dso_local i32 @ntb_free_mw(%struct.ntb_transport_ctx*, i32) #1

declare dso_local i32 @ntb_alloc_mw_buffer(%struct.ntb_transport_mw*, i32*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @ntb_mw_set_trans(%struct.TYPE_3__*, i32, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

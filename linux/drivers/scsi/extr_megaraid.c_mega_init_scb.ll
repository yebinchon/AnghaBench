; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_megaraid.c_mega_init_scb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_megaraid.c_mega_init_scb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, %struct.TYPE_8__*, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i32*, i32, i32, i32*, i32, i32*, i32, i32*, i32*, i32 }

@.str = private unnamed_addr constant [29 x i8] c"RAID: Can't allocate sglist\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"RAID: Can't allocate passthru\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Can't allocate extended passthru\0A\00", align 1
@MEGA_DMA_TYPE_NONE = common dso_local global i32 0, align 4
@SCB_FREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*)* @mega_init_scb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mega_init_scb(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %27, %1
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp slt i32 %7, %10
  br i1 %11, label %12, label %30

12:                                               ; preds = %6
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 4
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i64 %17
  store %struct.TYPE_6__* %18, %struct.TYPE_6__** %4, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 10
  store i32* null, i32** %20, align 8
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 9
  store i32* null, i32** %22, align 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 7
  store i32* null, i32** %24, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 5
  store i32* null, i32** %26, align 8
  br label %27

27:                                               ; preds = %12
  %28 = load i32, i32* %5, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %5, align 4
  br label %6

30:                                               ; preds = %6
  store i32 0, i32* %5, align 4
  br label %31

31:                                               ; preds = %137, %30
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp slt i32 %32, %35
  br i1 %36, label %37, label %140

37:                                               ; preds = %31
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 4
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i64 %42
  store %struct.TYPE_6__* %43, %struct.TYPE_6__** %4, align 8
  %44 = load i32, i32* %5, align 4
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 3
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %48, align 8
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = sext i32 %52 to i64
  %54 = mul i64 4, %53
  %55 = trunc i64 %54 to i32
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 11
  %58 = call i8* @pci_alloc_consistent(%struct.TYPE_8__* %49, i32 %55, i32* %57)
  %59 = bitcast i8* %58 to i32*
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 10
  store i32* %59, i32** %61, align 8
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 10
  %64 = load i32*, i32** %63, align 8
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 9
  store i32* %64, i32** %66, align 8
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 9
  %69 = load i32*, i32** %68, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %79, label %71

71:                                               ; preds = %37
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 3
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = call i32 @dev_warn(i32* %75, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %78 = call i32 @mega_free_sgl(%struct.TYPE_7__* %77)
  store i32 -1, i32* %2, align 4
  br label %141

79:                                               ; preds = %37
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 3
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %81, align 8
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 8
  %85 = call i8* @pci_alloc_consistent(%struct.TYPE_8__* %82, i32 4, i32* %84)
  %86 = bitcast i8* %85 to i32*
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 7
  store i32* %86, i32** %88, align 8
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 7
  %91 = load i32*, i32** %90, align 8
  %92 = icmp ne i32* %91, null
  br i1 %92, label %101, label %93

93:                                               ; preds = %79
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 3
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 0
  %98 = call i32 @dev_warn(i32* %97, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %100 = call i32 @mega_free_sgl(%struct.TYPE_7__* %99)
  store i32 -1, i32* %2, align 4
  br label %141

101:                                              ; preds = %79
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 3
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %103, align 8
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 6
  %107 = call i8* @pci_alloc_consistent(%struct.TYPE_8__* %104, i32 4, i32* %106)
  %108 = bitcast i8* %107 to i32*
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 5
  store i32* %108, i32** %110, align 8
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 5
  %113 = load i32*, i32** %112, align 8
  %114 = icmp ne i32* %113, null
  br i1 %114, label %123, label %115

115:                                              ; preds = %101
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 3
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 0
  %120 = call i32 @dev_warn(i32* %119, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %122 = call i32 @mega_free_sgl(%struct.TYPE_7__* %121)
  store i32 -1, i32* %2, align 4
  br label %141

123:                                              ; preds = %101
  %124 = load i32, i32* @MEGA_DMA_TYPE_NONE, align 4
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 4
  store i32 %124, i32* %126, align 4
  %127 = load i32, i32* @SCB_FREE, align 4
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 3
  store i32 %127, i32* %129, align 8
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 2
  store i32* null, i32** %131, align 8
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 1
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 2
  %136 = call i32 @list_add(i32* %133, i32* %135)
  br label %137

137:                                              ; preds = %123
  %138 = load i32, i32* %5, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %5, align 4
  br label %31

140:                                              ; preds = %31
  store i32 0, i32* %2, align 4
  br label %141

141:                                              ; preds = %140, %115, %93, %71
  %142 = load i32, i32* %2, align 4
  ret i32 %142
}

declare dso_local i8* @pci_alloc_consistent(%struct.TYPE_8__*, i32, i32*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @mega_free_sgl(%struct.TYPE_7__*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

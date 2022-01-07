; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_hptiop.c_hptiop_internal_memalloc_mvfrey.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_hptiop.c_hptiop_internal_memalloc_mvfrey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hptiop_hba = type { i64, %struct.TYPE_10__, %struct.TYPE_7__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32*, %struct.mvfrey_outlist_entry*, %struct.mvfrey_inlist_entry*, %struct.TYPE_8__, %struct.TYPE_6__* }
%struct.mvfrey_outlist_entry = type { i32 }
%struct.mvfrey_inlist_entry = type { i32 }
%struct.TYPE_8__ = type { i8*, i32, i32*, i32* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hptiop_hba*)* @hptiop_internal_memalloc_mvfrey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hptiop_internal_memalloc_mvfrey(%struct.hptiop_hba* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hptiop_hba*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.hptiop_hba* %0, %struct.hptiop_hba** %3, align 8
  %7 = load %struct.hptiop_hba*, %struct.hptiop_hba** %3, align 8
  %8 = getelementptr inbounds %struct.hptiop_hba, %struct.hptiop_hba* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 9
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = call i32 @readl(i32* %12)
  store i32 %13, i32* %4, align 4
  %14 = load %struct.hptiop_hba*, %struct.hptiop_hba** %3, align 8
  %15 = getelementptr inbounds %struct.hptiop_hba, %struct.hptiop_hba* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %16, 0
  %18 = zext i1 %17 to i32
  %19 = call i32 @BUG_ON(i32 %18)
  %20 = load i32, i32* %4, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = call i32 @BUG_ON(i32 1)
  store i32 -1, i32* %2, align 4
  br label %145

24:                                               ; preds = %1
  %25 = load i32, i32* %4, align 4
  %26 = ashr i32 %25, 16
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = load %struct.hptiop_hba*, %struct.hptiop_hba** %3, align 8
  %29 = getelementptr inbounds %struct.hptiop_hba, %struct.hptiop_hba* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  store i32 %27, i32* %31, align 8
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = mul i64 %33, 4
  %35 = add i64 2048, %34
  %36 = load i32, i32* %4, align 4
  %37 = sext i32 %36 to i64
  %38 = mul i64 %37, 4
  %39 = add i64 %35, %38
  %40 = add i64 %39, 4
  %41 = trunc i64 %40 to i32
  %42 = load %struct.hptiop_hba*, %struct.hptiop_hba** %3, align 8
  %43 = getelementptr inbounds %struct.hptiop_hba, %struct.hptiop_hba* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 1
  store i32 %41, i32* %45, align 4
  %46 = load %struct.hptiop_hba*, %struct.hptiop_hba** %3, align 8
  %47 = getelementptr inbounds %struct.hptiop_hba, %struct.hptiop_hba* %46, i32 0, i32 2
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load %struct.hptiop_hba*, %struct.hptiop_hba** %3, align 8
  %51 = getelementptr inbounds %struct.hptiop_hba, %struct.hptiop_hba* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @GFP_KERNEL, align 4
  %56 = call i8* @dma_alloc_coherent(i32* %49, i32 %54, i32* %6, i32 %55)
  store i8* %56, i8** %5, align 8
  %57 = load i8*, i8** %5, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %60, label %59

59:                                               ; preds = %24
  store i32 -1, i32* %2, align 4
  br label %145

60:                                               ; preds = %24
  %61 = load i8*, i8** %5, align 8
  %62 = load %struct.hptiop_hba*, %struct.hptiop_hba** %3, align 8
  %63 = getelementptr inbounds %struct.hptiop_hba, %struct.hptiop_hba* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  store i8* %61, i8** %66, align 8
  %67 = load i32, i32* %6, align 4
  %68 = ashr i32 %67, 5
  %69 = load %struct.hptiop_hba*, %struct.hptiop_hba** %3, align 8
  %70 = getelementptr inbounds %struct.hptiop_hba, %struct.hptiop_hba* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 1
  store i32 %68, i32* %73, align 8
  %74 = load %struct.hptiop_hba*, %struct.hptiop_hba** %3, align 8
  %75 = getelementptr inbounds %struct.hptiop_hba, %struct.hptiop_hba* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 3
  store i32* null, i32** %78, align 8
  %79 = load %struct.hptiop_hba*, %struct.hptiop_hba** %3, align 8
  %80 = getelementptr inbounds %struct.hptiop_hba, %struct.hptiop_hba* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 2
  store i32* null, i32** %83, align 8
  %84 = load i8*, i8** %5, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 2048
  store i8* %85, i8** %5, align 8
  %86 = load i32, i32* %6, align 4
  %87 = add nsw i32 %86, 2048
  store i32 %87, i32* %6, align 4
  %88 = load i8*, i8** %5, align 8
  %89 = bitcast i8* %88 to %struct.mvfrey_inlist_entry*
  %90 = load %struct.hptiop_hba*, %struct.hptiop_hba** %3, align 8
  %91 = getelementptr inbounds %struct.hptiop_hba, %struct.hptiop_hba* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 7
  store %struct.mvfrey_inlist_entry* %89, %struct.mvfrey_inlist_entry** %93, align 8
  %94 = load i32, i32* %6, align 4
  %95 = load %struct.hptiop_hba*, %struct.hptiop_hba** %3, align 8
  %96 = getelementptr inbounds %struct.hptiop_hba, %struct.hptiop_hba* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 2
  store i32 %94, i32* %98, align 8
  %99 = load i32, i32* %4, align 4
  %100 = sext i32 %99 to i64
  %101 = mul i64 %100, 4
  %102 = load i8*, i8** %5, align 8
  %103 = getelementptr inbounds i8, i8* %102, i64 %101
  store i8* %103, i8** %5, align 8
  %104 = load i32, i32* %4, align 4
  %105 = sext i32 %104 to i64
  %106 = mul i64 %105, 4
  %107 = load i32, i32* %6, align 4
  %108 = sext i32 %107 to i64
  %109 = add i64 %108, %106
  %110 = trunc i64 %109 to i32
  store i32 %110, i32* %6, align 4
  %111 = load i8*, i8** %5, align 8
  %112 = bitcast i8* %111 to %struct.mvfrey_outlist_entry*
  %113 = load %struct.hptiop_hba*, %struct.hptiop_hba** %3, align 8
  %114 = getelementptr inbounds %struct.hptiop_hba, %struct.hptiop_hba* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 6
  store %struct.mvfrey_outlist_entry* %112, %struct.mvfrey_outlist_entry** %116, align 8
  %117 = load i32, i32* %6, align 4
  %118 = load %struct.hptiop_hba*, %struct.hptiop_hba** %3, align 8
  %119 = getelementptr inbounds %struct.hptiop_hba, %struct.hptiop_hba* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 3
  store i32 %117, i32* %121, align 4
  %122 = load i32, i32* %4, align 4
  %123 = sext i32 %122 to i64
  %124 = mul i64 %123, 4
  %125 = load i8*, i8** %5, align 8
  %126 = getelementptr inbounds i8, i8* %125, i64 %124
  store i8* %126, i8** %5, align 8
  %127 = load i32, i32* %4, align 4
  %128 = sext i32 %127 to i64
  %129 = mul i64 %128, 4
  %130 = load i32, i32* %6, align 4
  %131 = sext i32 %130 to i64
  %132 = add i64 %131, %129
  %133 = trunc i64 %132 to i32
  store i32 %133, i32* %6, align 4
  %134 = load i8*, i8** %5, align 8
  %135 = bitcast i8* %134 to i32*
  %136 = load %struct.hptiop_hba*, %struct.hptiop_hba** %3, align 8
  %137 = getelementptr inbounds %struct.hptiop_hba, %struct.hptiop_hba* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 5
  store i32* %135, i32** %139, align 8
  %140 = load i32, i32* %6, align 4
  %141 = load %struct.hptiop_hba*, %struct.hptiop_hba** %3, align 8
  %142 = getelementptr inbounds %struct.hptiop_hba, %struct.hptiop_hba* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i32 0, i32 4
  store i32 %140, i32* %144, align 8
  store i32 0, i32* %2, align 4
  br label %145

145:                                              ; preds = %60, %59, %22
  %146 = load i32, i32* %2, align 4
  ret i32 %146
}

declare dso_local i32 @readl(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i8* @dma_alloc_coherent(i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

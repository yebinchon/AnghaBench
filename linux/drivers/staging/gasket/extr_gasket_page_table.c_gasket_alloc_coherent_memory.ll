; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/gasket/extr_gasket_page_table.c_gasket_alloc_coherent_memory.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/gasket/extr_gasket_page_table.c_gasket_alloc_coherent_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gasket_dev = type { %struct.TYPE_8__**, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64, i8* }
%struct.TYPE_7__ = type { i32, i8*, i32* }
%struct.gasket_driver_desc = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i8* }

@PAGE_SIZE = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gasket_alloc_coherent_memory(%struct.gasket_dev* %0, i64 %1, i8** %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.gasket_dev*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.gasket_driver_desc*, align 8
  store %struct.gasket_dev* %0, %struct.gasket_dev** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8** %2, i8*** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load i64, i64* %7, align 8
  %16 = load i32, i32* @PAGE_SIZE, align 4
  %17 = call i32 @DIV_ROUND_UP(i64 %15, i32 %16)
  store i32 %17, i32* %13, align 4
  %18 = load %struct.gasket_dev*, %struct.gasket_dev** %6, align 8
  %19 = call %struct.gasket_driver_desc* @gasket_get_driver_desc(%struct.gasket_dev* %18)
  store %struct.gasket_driver_desc* %19, %struct.gasket_driver_desc** %14, align 8
  %20 = load %struct.gasket_dev*, %struct.gasket_dev** %6, align 8
  %21 = getelementptr inbounds %struct.gasket_dev, %struct.gasket_dev* %20, i32 0, i32 0
  %22 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %21, align 8
  %23 = load i64, i64* %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %22, i64 %23
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %26 = icmp ne %struct.TYPE_8__* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %4
  %28 = load i32, i32* @EFAULT, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %190

30:                                               ; preds = %4
  %31 = load i32, i32* %13, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %5, align 4
  br label %190

36:                                               ; preds = %30
  %37 = load %struct.gasket_dev*, %struct.gasket_dev** %6, align 8
  %38 = call i32 @gasket_get_device(%struct.gasket_dev* %37)
  %39 = load i32, i32* %13, align 4
  %40 = load i32, i32* @PAGE_SIZE, align 4
  %41 = mul i32 %39, %40
  %42 = load i32, i32* @GFP_KERNEL, align 4
  %43 = call i8* @dma_alloc_coherent(i32 %38, i32 %41, i8** %10, i32 %42)
  store i8* %43, i8** %11, align 8
  %44 = load i8*, i8** %11, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %36
  br label %143

47:                                               ; preds = %36
  %48 = load i32, i32* %13, align 4
  %49 = load %struct.gasket_dev*, %struct.gasket_dev** %6, align 8
  %50 = getelementptr inbounds %struct.gasket_dev, %struct.gasket_dev* %49, i32 0, i32 0
  %51 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %50, align 8
  %52 = load i64, i64* %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %51, i64 %52
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  store i32 %48, i32* %55, align 8
  %56 = load i32, i32* %13, align 4
  %57 = load i32, i32* @GFP_KERNEL, align 4
  %58 = call %struct.TYPE_9__* @kcalloc(i32 %56, i32 16, i32 %57)
  %59 = load %struct.gasket_dev*, %struct.gasket_dev** %6, align 8
  %60 = getelementptr inbounds %struct.gasket_dev, %struct.gasket_dev* %59, i32 0, i32 0
  %61 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %60, align 8
  %62 = load i64, i64* %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %61, i64 %62
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 1
  store %struct.TYPE_9__* %58, %struct.TYPE_9__** %65, align 8
  %66 = load %struct.gasket_dev*, %struct.gasket_dev** %6, align 8
  %67 = getelementptr inbounds %struct.gasket_dev, %struct.gasket_dev* %66, i32 0, i32 0
  %68 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %67, align 8
  %69 = load i64, i64* %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %68, i64 %69
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 1
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %72, align 8
  %74 = icmp ne %struct.TYPE_9__* %73, null
  br i1 %74, label %76, label %75

75:                                               ; preds = %47
  br label %143

76:                                               ; preds = %47
  %77 = load i32, i32* @PAGE_SIZE, align 4
  %78 = load i32, i32* %13, align 4
  %79 = mul i32 %77, %78
  %80 = load %struct.gasket_dev*, %struct.gasket_dev** %6, align 8
  %81 = getelementptr inbounds %struct.gasket_dev, %struct.gasket_dev* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  store i32 %79, i32* %82, align 8
  %83 = load i8*, i8** %10, align 8
  %84 = load %struct.gasket_dev*, %struct.gasket_dev** %6, align 8
  %85 = getelementptr inbounds %struct.gasket_dev, %struct.gasket_dev* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 1
  store i8* %83, i8** %86, align 8
  %87 = load i8*, i8** %11, align 8
  %88 = bitcast i8* %87 to i32*
  %89 = load %struct.gasket_dev*, %struct.gasket_dev** %6, align 8
  %90 = getelementptr inbounds %struct.gasket_dev, %struct.gasket_dev* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 2
  store i32* %88, i32** %91, align 8
  %92 = load %struct.gasket_driver_desc*, %struct.gasket_driver_desc** %14, align 8
  %93 = getelementptr inbounds %struct.gasket_driver_desc, %struct.gasket_driver_desc* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = load i8*, i8** %94, align 8
  %96 = load i8**, i8*** %8, align 8
  store i8* %95, i8** %96, align 8
  store i32 0, i32* %12, align 4
  br label %97

97:                                               ; preds = %139, %76
  %98 = load i32, i32* %12, align 4
  %99 = load i32, i32* %13, align 4
  %100 = icmp ult i32 %98, %99
  br i1 %100, label %101, label %142

101:                                              ; preds = %97
  %102 = load i8*, i8** %10, align 8
  %103 = load i32, i32* %12, align 4
  %104 = load i32, i32* @PAGE_SIZE, align 4
  %105 = mul i32 %103, %104
  %106 = zext i32 %105 to i64
  %107 = getelementptr i8, i8* %102, i64 %106
  %108 = load %struct.gasket_dev*, %struct.gasket_dev** %6, align 8
  %109 = getelementptr inbounds %struct.gasket_dev, %struct.gasket_dev* %108, i32 0, i32 0
  %110 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %109, align 8
  %111 = load i64, i64* %9, align 8
  %112 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %110, i64 %111
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 1
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %114, align 8
  %116 = load i32, i32* %12, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 1
  store i8* %107, i8** %119, align 8
  %120 = load i8*, i8** %11, align 8
  %121 = ptrtoint i8* %120 to i64
  %122 = load i32, i32* %12, align 4
  %123 = load i32, i32* @PAGE_SIZE, align 4
  %124 = mul i32 %122, %123
  %125 = zext i32 %124 to i64
  %126 = add i64 %121, %125
  %127 = load %struct.gasket_dev*, %struct.gasket_dev** %6, align 8
  %128 = getelementptr inbounds %struct.gasket_dev, %struct.gasket_dev* %127, i32 0, i32 0
  %129 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %128, align 8
  %130 = load i64, i64* %9, align 8
  %131 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %129, i64 %130
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 1
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %133, align 8
  %135 = load i32, i32* %12, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 0
  store i64 %126, i64* %138, align 8
  br label %139

139:                                              ; preds = %101
  %140 = load i32, i32* %12, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %12, align 4
  br label %97

142:                                              ; preds = %97
  store i32 0, i32* %5, align 4
  br label %190

143:                                              ; preds = %75, %46
  %144 = load i8*, i8** %11, align 8
  %145 = icmp ne i8* %144, null
  br i1 %145, label %146, label %164

146:                                              ; preds = %143
  %147 = load %struct.gasket_dev*, %struct.gasket_dev** %6, align 8
  %148 = call i32 @gasket_get_device(%struct.gasket_dev* %147)
  %149 = load i32, i32* %13, align 4
  %150 = load i32, i32* @PAGE_SIZE, align 4
  %151 = mul i32 %149, %150
  %152 = load i8*, i8** %11, align 8
  %153 = load i8*, i8** %10, align 8
  %154 = call i32 @dma_free_coherent(i32 %148, i32 %151, i8* %152, i8* %153)
  %155 = load %struct.gasket_dev*, %struct.gasket_dev** %6, align 8
  %156 = getelementptr inbounds %struct.gasket_dev, %struct.gasket_dev* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i32 0, i32 0
  store i32 0, i32* %157, align 8
  %158 = load %struct.gasket_dev*, %struct.gasket_dev** %6, align 8
  %159 = getelementptr inbounds %struct.gasket_dev, %struct.gasket_dev* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i32 0, i32 2
  store i32* null, i32** %160, align 8
  %161 = load %struct.gasket_dev*, %struct.gasket_dev** %6, align 8
  %162 = getelementptr inbounds %struct.gasket_dev, %struct.gasket_dev* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i32 0, i32 1
  store i8* null, i8** %163, align 8
  br label %164

164:                                              ; preds = %146, %143
  %165 = load %struct.gasket_dev*, %struct.gasket_dev** %6, align 8
  %166 = getelementptr inbounds %struct.gasket_dev, %struct.gasket_dev* %165, i32 0, i32 0
  %167 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %166, align 8
  %168 = load i64, i64* %9, align 8
  %169 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %167, i64 %168
  %170 = load %struct.TYPE_8__*, %struct.TYPE_8__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i32 0, i32 1
  %172 = load %struct.TYPE_9__*, %struct.TYPE_9__** %171, align 8
  %173 = call i32 @kfree(%struct.TYPE_9__* %172)
  %174 = load %struct.gasket_dev*, %struct.gasket_dev** %6, align 8
  %175 = getelementptr inbounds %struct.gasket_dev, %struct.gasket_dev* %174, i32 0, i32 0
  %176 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %175, align 8
  %177 = load i64, i64* %9, align 8
  %178 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %176, i64 %177
  %179 = load %struct.TYPE_8__*, %struct.TYPE_8__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %179, i32 0, i32 1
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %180, align 8
  %181 = load %struct.gasket_dev*, %struct.gasket_dev** %6, align 8
  %182 = getelementptr inbounds %struct.gasket_dev, %struct.gasket_dev* %181, i32 0, i32 0
  %183 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %182, align 8
  %184 = load i64, i64* %9, align 8
  %185 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %183, i64 %184
  %186 = load %struct.TYPE_8__*, %struct.TYPE_8__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %186, i32 0, i32 0
  store i32 0, i32* %187, align 8
  %188 = load i32, i32* @ENOMEM, align 4
  %189 = sub nsw i32 0, %188
  store i32 %189, i32* %5, align 4
  br label %190

190:                                              ; preds = %164, %142, %33, %27
  %191 = load i32, i32* %5, align 4
  ret i32 %191
}

declare dso_local i32 @DIV_ROUND_UP(i64, i32) #1

declare dso_local %struct.gasket_driver_desc* @gasket_get_driver_desc(%struct.gasket_dev*) #1

declare dso_local i8* @dma_alloc_coherent(i32, i32, i8**, i32) #1

declare dso_local i32 @gasket_get_device(%struct.gasket_dev*) #1

declare dso_local %struct.TYPE_9__* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @dma_free_coherent(i32, i32, i8*, i8*) #1

declare dso_local i32 @kfree(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

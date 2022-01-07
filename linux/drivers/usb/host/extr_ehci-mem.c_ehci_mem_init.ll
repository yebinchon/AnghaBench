; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_ehci-mem.c_ehci_mem_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_ehci-mem.c_ehci_mem_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ehci_hcd = type { i32, i32*, i8**, %struct.TYPE_5__*, i64, i32, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_5__ = type { i32, %struct.ehci_qh_hw* }
%struct.ehci_qh_hw = type { i8*, i8*, i8* }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"ehci_qtd\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"ehci_qh\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"ehci_itd\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"ehci_sitd\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"couldn't init memory\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ehci_hcd*, i32)* @ehci_mem_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ehci_mem_init(%struct.ehci_hcd* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ehci_hcd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ehci_qh_hw*, align 8
  store %struct.ehci_hcd* %0, %struct.ehci_hcd** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %9 = call %struct.TYPE_6__* @ehci_to_hcd(%struct.ehci_hcd* %8)
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i8* @dma_pool_create(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %12, i32 4, i32 32, i32 4096)
  %14 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %15 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %14, i32 0, i32 10
  store i8* %13, i8** %15, align 8
  %16 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %17 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %16, i32 0, i32 10
  %18 = load i8*, i8** %17, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  br label %196

21:                                               ; preds = %2
  %22 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %23 = call %struct.TYPE_6__* @ehci_to_hcd(%struct.ehci_hcd* %22)
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i8* @dma_pool_create(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %26, i32 24, i32 32, i32 4096)
  %28 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %29 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %28, i32 0, i32 9
  store i8* %27, i8** %29, align 8
  %30 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %31 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %30, i32 0, i32 9
  %32 = load i8*, i8** %31, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %21
  br label %196

35:                                               ; preds = %21
  %36 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %37 = load i32, i32* %5, align 4
  %38 = call i8* @ehci_qh_alloc(%struct.ehci_hcd* %36, i32 %37)
  %39 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %40 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %39, i32 0, i32 8
  store i8* %38, i8** %40, align 8
  %41 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %42 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %41, i32 0, i32 8
  %43 = load i8*, i8** %42, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %35
  br label %196

46:                                               ; preds = %35
  %47 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %48 = call %struct.TYPE_6__* @ehci_to_hcd(%struct.ehci_hcd* %47)
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i8* @dma_pool_create(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %51, i32 4, i32 32, i32 4096)
  %53 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %54 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %53, i32 0, i32 7
  store i8* %52, i8** %54, align 8
  %55 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %56 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %55, i32 0, i32 7
  %57 = load i8*, i8** %56, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %60, label %59

59:                                               ; preds = %46
  br label %196

60:                                               ; preds = %46
  %61 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %62 = call %struct.TYPE_6__* @ehci_to_hcd(%struct.ehci_hcd* %61)
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i8* @dma_pool_create(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %65, i32 4, i32 32, i32 4096)
  %67 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %68 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %67, i32 0, i32 6
  store i8* %66, i8** %68, align 8
  %69 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %70 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %69, i32 0, i32 6
  %71 = load i8*, i8** %70, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %74, label %73

73:                                               ; preds = %60
  br label %196

74:                                               ; preds = %60
  %75 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %76 = call %struct.TYPE_6__* @ehci_to_hcd(%struct.ehci_hcd* %75)
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %81 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = sext i32 %82 to i64
  %84 = mul i64 %83, 8
  %85 = trunc i64 %84 to i32
  %86 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %87 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %86, i32 0, i32 5
  %88 = load i32, i32* %5, align 4
  %89 = call i64 @dma_alloc_coherent(i32 %79, i32 %85, i32* %87, i32 %88)
  %90 = inttoptr i64 %89 to i8**
  %91 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %92 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %91, i32 0, i32 2
  store i8** %90, i8*** %92, align 8
  %93 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %94 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %93, i32 0, i32 2
  %95 = load i8**, i8*** %94, align 8
  %96 = icmp eq i8** %95, null
  br i1 %96, label %97, label %98

97:                                               ; preds = %74
  br label %196

98:                                               ; preds = %74
  %99 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %100 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %99, i32 0, i32 4
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %162

103:                                              ; preds = %98
  %104 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %105 = load i32, i32* %5, align 4
  %106 = call i8* @ehci_qh_alloc(%struct.ehci_hcd* %104, i32 %105)
  %107 = bitcast i8* %106 to %struct.TYPE_5__*
  %108 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %109 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %108, i32 0, i32 3
  store %struct.TYPE_5__* %107, %struct.TYPE_5__** %109, align 8
  %110 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %111 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %110, i32 0, i32 3
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %111, align 8
  %113 = icmp ne %struct.TYPE_5__* %112, null
  br i1 %113, label %115, label %114

114:                                              ; preds = %103
  br label %196

115:                                              ; preds = %103
  %116 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %117 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %116, i32 0, i32 3
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 1
  %120 = load %struct.ehci_qh_hw*, %struct.ehci_qh_hw** %119, align 8
  store %struct.ehci_qh_hw* %120, %struct.ehci_qh_hw** %7, align 8
  %121 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %122 = call i8* @EHCI_LIST_END(%struct.ehci_hcd* %121)
  %123 = load %struct.ehci_qh_hw*, %struct.ehci_qh_hw** %7, align 8
  %124 = getelementptr inbounds %struct.ehci_qh_hw, %struct.ehci_qh_hw* %123, i32 0, i32 2
  store i8* %122, i8** %124, align 8
  %125 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %126 = call i8* @EHCI_LIST_END(%struct.ehci_hcd* %125)
  %127 = load %struct.ehci_qh_hw*, %struct.ehci_qh_hw** %7, align 8
  %128 = getelementptr inbounds %struct.ehci_qh_hw, %struct.ehci_qh_hw* %127, i32 0, i32 1
  store i8* %126, i8** %128, align 8
  %129 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %130 = call i8* @EHCI_LIST_END(%struct.ehci_hcd* %129)
  %131 = load %struct.ehci_qh_hw*, %struct.ehci_qh_hw** %7, align 8
  %132 = getelementptr inbounds %struct.ehci_qh_hw, %struct.ehci_qh_hw* %131, i32 0, i32 0
  store i8* %130, i8** %132, align 8
  %133 = load %struct.ehci_qh_hw*, %struct.ehci_qh_hw** %7, align 8
  %134 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %135 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %134, i32 0, i32 3
  %136 = load %struct.TYPE_5__*, %struct.TYPE_5__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 1
  store %struct.ehci_qh_hw* %133, %struct.ehci_qh_hw** %137, align 8
  store i32 0, i32* %6, align 4
  br label %138

138:                                              ; preds = %158, %115
  %139 = load i32, i32* %6, align 4
  %140 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %141 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = icmp slt i32 %139, %142
  br i1 %143, label %144, label %161

144:                                              ; preds = %138
  %145 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %146 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %147 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %146, i32 0, i32 3
  %148 = load %struct.TYPE_5__*, %struct.TYPE_5__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = call i8* @cpu_to_hc32(%struct.ehci_hcd* %145, i32 %150)
  %152 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %153 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %152, i32 0, i32 2
  %154 = load i8**, i8*** %153, align 8
  %155 = load i32, i32* %6, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i8*, i8** %154, i64 %156
  store i8* %151, i8** %157, align 8
  br label %158

158:                                              ; preds = %144
  %159 = load i32, i32* %6, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %6, align 4
  br label %138

161:                                              ; preds = %138
  br label %182

162:                                              ; preds = %98
  store i32 0, i32* %6, align 4
  br label %163

163:                                              ; preds = %178, %162
  %164 = load i32, i32* %6, align 4
  %165 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %166 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = icmp slt i32 %164, %167
  br i1 %168, label %169, label %181

169:                                              ; preds = %163
  %170 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %171 = call i8* @EHCI_LIST_END(%struct.ehci_hcd* %170)
  %172 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %173 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %172, i32 0, i32 2
  %174 = load i8**, i8*** %173, align 8
  %175 = load i32, i32* %6, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i8*, i8** %174, i64 %176
  store i8* %171, i8** %177, align 8
  br label %178

178:                                              ; preds = %169
  %179 = load i32, i32* %6, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %6, align 4
  br label %163

181:                                              ; preds = %163
  br label %182

182:                                              ; preds = %181, %161
  %183 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %184 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = load i32, i32* %5, align 4
  %187 = call i32* @kcalloc(i32 %185, i32 8, i32 %186)
  %188 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %189 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %188, i32 0, i32 1
  store i32* %187, i32** %189, align 8
  %190 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %191 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %190, i32 0, i32 1
  %192 = load i32*, i32** %191, align 8
  %193 = icmp ne i32* %192, null
  br i1 %193, label %194, label %195

194:                                              ; preds = %182
  store i32 0, i32* %3, align 4
  br label %203

195:                                              ; preds = %182
  br label %196

196:                                              ; preds = %195, %114, %97, %73, %59, %45, %34, %20
  %197 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %198 = call i32 @ehci_dbg(%struct.ehci_hcd* %197, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  %199 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %200 = call i32 @ehci_mem_cleanup(%struct.ehci_hcd* %199)
  %201 = load i32, i32* @ENOMEM, align 4
  %202 = sub nsw i32 0, %201
  store i32 %202, i32* %3, align 4
  br label %203

203:                                              ; preds = %196, %194
  %204 = load i32, i32* %3, align 4
  ret i32 %204
}

declare dso_local i8* @dma_pool_create(i8*, i32, i32, i32, i32) #1

declare dso_local %struct.TYPE_6__* @ehci_to_hcd(%struct.ehci_hcd*) #1

declare dso_local i8* @ehci_qh_alloc(%struct.ehci_hcd*, i32) #1

declare dso_local i64 @dma_alloc_coherent(i32, i32, i32*, i32) #1

declare dso_local i8* @EHCI_LIST_END(%struct.ehci_hcd*) #1

declare dso_local i8* @cpu_to_hc32(%struct.ehci_hcd*, i32) #1

declare dso_local i32* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @ehci_dbg(%struct.ehci_hcd*, i8*) #1

declare dso_local i32 @ehci_mem_cleanup(%struct.ehci_hcd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

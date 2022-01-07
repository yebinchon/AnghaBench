; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_vfio_ccw_cp.c_ccwchain_fetch_direct.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_vfio_ccw_cp.c_ccwchain_fetch_direct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccwchain = type { %struct.pfn_array*, %struct.ccw1* }
%struct.pfn_array = type { i64*, i64 }
%struct.ccw1 = type { i32, i64, i32 }
%struct.channel_program = type { i32 }

@GFP_DMA = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@CCW_FLAG_IDA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ccwchain*, i32, %struct.channel_program*)* @ccwchain_fetch_direct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccwchain_fetch_direct(%struct.ccwchain* %0, i32 %1, %struct.channel_program* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ccwchain*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.channel_program*, align 8
  %8 = alloca %struct.ccw1*, align 8
  %9 = alloca %struct.pfn_array*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.ccwchain* %0, %struct.ccwchain** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.channel_program* %2, %struct.channel_program** %7, align 8
  store i32 1, i32* %13, align 4
  %17 = load %struct.ccwchain*, %struct.ccwchain** %5, align 8
  %18 = getelementptr inbounds %struct.ccwchain, %struct.ccwchain* %17, i32 0, i32 1
  %19 = load %struct.ccw1*, %struct.ccw1** %18, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %19, i64 %21
  store %struct.ccw1* %22, %struct.ccw1** %8, align 8
  %23 = load %struct.ccw1*, %struct.ccw1** %8, align 8
  %24 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %3
  %28 = load %struct.ccw1*, %struct.ccw1** %8, align 8
  %29 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %13, align 4
  br label %31

31:                                               ; preds = %27, %3
  %32 = load %struct.ccw1*, %struct.ccw1** %8, align 8
  %33 = call i64 @ccw_is_idal(%struct.ccw1* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %48

35:                                               ; preds = %31
  %36 = load %struct.channel_program*, %struct.channel_program** %7, align 8
  %37 = getelementptr inbounds %struct.channel_program, %struct.channel_program* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.ccw1*, %struct.ccw1** %8, align 8
  %40 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @copy_from_iova(i32 %38, i64* %10, i64 %41, i32 8)
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* %12, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %35
  %46 = load i32, i32* %12, align 4
  store i32 %46, i32* %4, align 4
  br label %169

47:                                               ; preds = %35
  br label %52

48:                                               ; preds = %31
  %49 = load %struct.ccw1*, %struct.ccw1** %8, align 8
  %50 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  store i64 %51, i64* %10, align 8
  br label %52

52:                                               ; preds = %48, %47
  %53 = load i64, i64* %10, align 8
  %54 = inttoptr i64 %53 to i8*
  %55 = load i32, i32* %13, align 4
  %56 = call i32 @idal_nr_words(i8* %54, i32 %55)
  store i32 %56, i32* %14, align 4
  %57 = load i32, i32* %14, align 4
  %58 = sext i32 %57 to i64
  %59 = mul i64 %58, 8
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %15, align 4
  %61 = load i32, i32* %14, align 4
  %62 = load i32, i32* @GFP_DMA, align 4
  %63 = load i32, i32* @GFP_KERNEL, align 4
  %64 = or i32 %62, %63
  %65 = call i64* @kcalloc(i32 %61, i32 8, i32 %64)
  store i64* %65, i64** %11, align 8
  %66 = load i64*, i64** %11, align 8
  %67 = icmp ne i64* %66, null
  br i1 %67, label %71, label %68

68:                                               ; preds = %52
  %69 = load i32, i32* @ENOMEM, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %12, align 4
  br label %165

71:                                               ; preds = %52
  %72 = load %struct.ccwchain*, %struct.ccwchain** %5, align 8
  %73 = getelementptr inbounds %struct.ccwchain, %struct.ccwchain* %72, i32 0, i32 0
  %74 = load %struct.pfn_array*, %struct.pfn_array** %73, align 8
  %75 = load i32, i32* %6, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.pfn_array, %struct.pfn_array* %74, i64 %76
  store %struct.pfn_array* %77, %struct.pfn_array** %9, align 8
  %78 = load %struct.pfn_array*, %struct.pfn_array** %9, align 8
  %79 = load i64, i64* %10, align 8
  %80 = load i32, i32* %13, align 4
  %81 = call i32 @pfn_array_alloc(%struct.pfn_array* %78, i64 %79, i32 %80)
  store i32 %81, i32* %12, align 4
  %82 = load i32, i32* %12, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %71
  br label %162

85:                                               ; preds = %71
  %86 = load %struct.ccw1*, %struct.ccw1** %8, align 8
  %87 = call i64 @ccw_is_idal(%struct.ccw1* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %125

89:                                               ; preds = %85
  %90 = load %struct.channel_program*, %struct.channel_program** %7, align 8
  %91 = getelementptr inbounds %struct.channel_program, %struct.channel_program* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i64*, i64** %11, align 8
  %94 = load %struct.ccw1*, %struct.ccw1** %8, align 8
  %95 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = load i32, i32* %15, align 4
  %98 = call i32 @copy_from_iova(i32 %92, i64* %93, i64 %96, i32 %97)
  store i32 %98, i32* %12, align 4
  %99 = load i32, i32* %12, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %89
  br label %156

102:                                              ; preds = %89
  store i32 0, i32* %16, align 4
  br label %103

103:                                              ; preds = %121, %102
  %104 = load i32, i32* %16, align 4
  %105 = load i32, i32* %14, align 4
  %106 = icmp slt i32 %104, %105
  br i1 %106, label %107, label %124

107:                                              ; preds = %103
  %108 = load i64*, i64** %11, align 8
  %109 = load i32, i32* %16, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i64, i64* %108, i64 %110
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @PAGE_SHIFT, align 8
  %114 = lshr i64 %112, %113
  %115 = load %struct.pfn_array*, %struct.pfn_array** %9, align 8
  %116 = getelementptr inbounds %struct.pfn_array, %struct.pfn_array* %115, i32 0, i32 0
  %117 = load i64*, i64** %116, align 8
  %118 = load i32, i32* %16, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i64, i64* %117, i64 %119
  store i64 %114, i64* %120, align 8
  br label %121

121:                                              ; preds = %107
  %122 = load i32, i32* %16, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %16, align 4
  br label %103

124:                                              ; preds = %103
  br label %126

125:                                              ; preds = %85
  br label %126

126:                                              ; preds = %125, %124
  %127 = load %struct.ccw1*, %struct.ccw1** %8, align 8
  %128 = call i64 @ccw_does_data_transfer(%struct.ccw1* %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %140

130:                                              ; preds = %126
  %131 = load %struct.pfn_array*, %struct.pfn_array** %9, align 8
  %132 = load %struct.channel_program*, %struct.channel_program** %7, align 8
  %133 = getelementptr inbounds %struct.channel_program, %struct.channel_program* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @pfn_array_pin(%struct.pfn_array* %131, i32 %134)
  store i32 %135, i32* %12, align 4
  %136 = load i32, i32* %12, align 4
  %137 = icmp slt i32 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %130
  br label %156

139:                                              ; preds = %130
  br label %143

140:                                              ; preds = %126
  %141 = load %struct.pfn_array*, %struct.pfn_array** %9, align 8
  %142 = getelementptr inbounds %struct.pfn_array, %struct.pfn_array* %141, i32 0, i32 1
  store i64 0, i64* %142, align 8
  br label %143

143:                                              ; preds = %140, %139
  %144 = load i64*, i64** %11, align 8
  %145 = call i64 @virt_to_phys(i64* %144)
  %146 = load %struct.ccw1*, %struct.ccw1** %8, align 8
  %147 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %146, i32 0, i32 1
  store i64 %145, i64* %147, align 8
  %148 = load i32, i32* @CCW_FLAG_IDA, align 4
  %149 = load %struct.ccw1*, %struct.ccw1** %8, align 8
  %150 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 8
  %152 = or i32 %151, %148
  store i32 %152, i32* %150, align 8
  %153 = load %struct.pfn_array*, %struct.pfn_array** %9, align 8
  %154 = load i64*, i64** %11, align 8
  %155 = call i32 @pfn_array_idal_create_words(%struct.pfn_array* %153, i64* %154)
  store i32 0, i32* %4, align 4
  br label %169

156:                                              ; preds = %138, %101
  %157 = load %struct.pfn_array*, %struct.pfn_array** %9, align 8
  %158 = load %struct.channel_program*, %struct.channel_program** %7, align 8
  %159 = getelementptr inbounds %struct.channel_program, %struct.channel_program* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @pfn_array_unpin_free(%struct.pfn_array* %157, i32 %160)
  br label %162

162:                                              ; preds = %156, %84
  %163 = load i64*, i64** %11, align 8
  %164 = call i32 @kfree(i64* %163)
  br label %165

165:                                              ; preds = %162, %68
  %166 = load %struct.ccw1*, %struct.ccw1** %8, align 8
  %167 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %166, i32 0, i32 1
  store i64 0, i64* %167, align 8
  %168 = load i32, i32* %12, align 4
  store i32 %168, i32* %4, align 4
  br label %169

169:                                              ; preds = %165, %143, %45
  %170 = load i32, i32* %4, align 4
  ret i32 %170
}

declare dso_local i64 @ccw_is_idal(%struct.ccw1*) #1

declare dso_local i32 @copy_from_iova(i32, i64*, i64, i32) #1

declare dso_local i32 @idal_nr_words(i8*, i32) #1

declare dso_local i64* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @pfn_array_alloc(%struct.pfn_array*, i64, i32) #1

declare dso_local i64 @ccw_does_data_transfer(%struct.ccw1*) #1

declare dso_local i32 @pfn_array_pin(%struct.pfn_array*, i32) #1

declare dso_local i64 @virt_to_phys(i64*) #1

declare dso_local i32 @pfn_array_idal_create_words(%struct.pfn_array*, i64*) #1

declare dso_local i32 @pfn_array_unpin_free(%struct.pfn_array*, i32) #1

declare dso_local i32 @kfree(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

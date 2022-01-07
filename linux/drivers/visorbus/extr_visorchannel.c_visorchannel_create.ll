; ModuleID = '/home/carl/AnghaBench/linux/drivers/visorbus/extr_visorchannel.c_visorchannel_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/visorbus/extr_visorchannel.c_visorchannel_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.visorchannel = type { i32, i64, i64, i32, i32*, i8*, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i64 }

@VISOR_DRV_NAME = common dso_local global i32 0, align 4
@visor_video_guid = common dso_local global i32 0, align 4
@MEMREMAP_WB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.visorchannel* @visorchannel_create(i64 %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.visorchannel*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.visorchannel*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store i64 %0, i64* %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i64 4, i64* %12, align 8
  %13 = load i64, i64* %6, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  store %struct.visorchannel* null, %struct.visorchannel** %5, align 8
  br label %151

16:                                               ; preds = %4
  %17 = load i32, i32* %7, align 4
  %18 = call %struct.visorchannel* @kzalloc(i32 64, i32 %17)
  store %struct.visorchannel* %18, %struct.visorchannel** %10, align 8
  %19 = load %struct.visorchannel*, %struct.visorchannel** %10, align 8
  %20 = icmp ne %struct.visorchannel* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %16
  store %struct.visorchannel* null, %struct.visorchannel** %5, align 8
  br label %151

22:                                               ; preds = %16
  %23 = load i32, i32* %9, align 4
  %24 = load %struct.visorchannel*, %struct.visorchannel** %10, align 8
  %25 = getelementptr inbounds %struct.visorchannel, %struct.visorchannel* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load %struct.visorchannel*, %struct.visorchannel** %10, align 8
  %27 = getelementptr inbounds %struct.visorchannel, %struct.visorchannel* %26, i32 0, i32 8
  %28 = call i32 @spin_lock_init(i32* %27)
  %29 = load %struct.visorchannel*, %struct.visorchannel** %10, align 8
  %30 = getelementptr inbounds %struct.visorchannel, %struct.visorchannel* %29, i32 0, i32 7
  %31 = call i32 @spin_lock_init(i32* %30)
  %32 = load i64, i64* %6, align 8
  %33 = load i64, i64* %12, align 8
  %34 = load i32, i32* @VISOR_DRV_NAME, align 4
  %35 = call i8* @request_mem_region(i64 %32, i64 %33, i32 %34)
  %36 = load %struct.visorchannel*, %struct.visorchannel** %10, align 8
  %37 = getelementptr inbounds %struct.visorchannel, %struct.visorchannel* %36, i32 0, i32 5
  store i8* %35, i8** %37, align 8
  %38 = load %struct.visorchannel*, %struct.visorchannel** %10, align 8
  %39 = getelementptr inbounds %struct.visorchannel, %struct.visorchannel* %38, i32 0, i32 5
  %40 = load i8*, i8** %39, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %47, label %42

42:                                               ; preds = %22
  %43 = load i32*, i32** %8, align 8
  %44 = call i32 @guid_equal(i32* %43, i32* @visor_video_guid)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %42
  br label %148

47:                                               ; preds = %42, %22
  %48 = load i64, i64* %6, align 8
  %49 = load i64, i64* %12, align 8
  %50 = load i32, i32* @MEMREMAP_WB, align 4
  %51 = call i8* @memremap(i64 %48, i64 %49, i32 %50)
  %52 = bitcast i8* %51 to i32*
  %53 = load %struct.visorchannel*, %struct.visorchannel** %10, align 8
  %54 = getelementptr inbounds %struct.visorchannel, %struct.visorchannel* %53, i32 0, i32 4
  store i32* %52, i32** %54, align 8
  %55 = load %struct.visorchannel*, %struct.visorchannel** %10, align 8
  %56 = getelementptr inbounds %struct.visorchannel, %struct.visorchannel* %55, i32 0, i32 4
  %57 = load i32*, i32** %56, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %63, label %59

59:                                               ; preds = %47
  %60 = load i64, i64* %6, align 8
  %61 = load i64, i64* %12, align 8
  %62 = call i32 @release_mem_region(i64 %60, i64 %61)
  br label %148

63:                                               ; preds = %47
  %64 = load i64, i64* %6, align 8
  %65 = load %struct.visorchannel*, %struct.visorchannel** %10, align 8
  %66 = getelementptr inbounds %struct.visorchannel, %struct.visorchannel* %65, i32 0, i32 1
  store i64 %64, i64* %66, align 8
  %67 = load i64, i64* %12, align 8
  %68 = load %struct.visorchannel*, %struct.visorchannel** %10, align 8
  %69 = getelementptr inbounds %struct.visorchannel, %struct.visorchannel* %68, i32 0, i32 2
  store i64 %67, i64* %69, align 8
  %70 = load %struct.visorchannel*, %struct.visorchannel** %10, align 8
  %71 = load %struct.visorchannel*, %struct.visorchannel** %10, align 8
  %72 = getelementptr inbounds %struct.visorchannel, %struct.visorchannel* %71, i32 0, i32 6
  %73 = load i64, i64* %12, align 8
  %74 = call i32 @visorchannel_read(%struct.visorchannel* %70, i32 0, %struct.TYPE_2__* %72, i64 %73)
  store i32 %74, i32* %11, align 4
  %75 = load i32, i32* %11, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %63
  br label %148

78:                                               ; preds = %63
  %79 = load %struct.visorchannel*, %struct.visorchannel** %10, align 8
  %80 = getelementptr inbounds %struct.visorchannel, %struct.visorchannel* %79, i32 0, i32 6
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  store i64 %82, i64* %12, align 8
  %83 = load %struct.visorchannel*, %struct.visorchannel** %10, align 8
  %84 = getelementptr inbounds %struct.visorchannel, %struct.visorchannel* %83, i32 0, i32 4
  %85 = load i32*, i32** %84, align 8
  %86 = call i32 @memunmap(i32* %85)
  %87 = load %struct.visorchannel*, %struct.visorchannel** %10, align 8
  %88 = getelementptr inbounds %struct.visorchannel, %struct.visorchannel* %87, i32 0, i32 5
  %89 = load i8*, i8** %88, align 8
  %90 = icmp ne i8* %89, null
  br i1 %90, label %91, label %99

91:                                               ; preds = %78
  %92 = load %struct.visorchannel*, %struct.visorchannel** %10, align 8
  %93 = getelementptr inbounds %struct.visorchannel, %struct.visorchannel* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.visorchannel*, %struct.visorchannel** %10, align 8
  %96 = getelementptr inbounds %struct.visorchannel, %struct.visorchannel* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = call i32 @release_mem_region(i64 %94, i64 %97)
  br label %99

99:                                               ; preds = %91, %78
  %100 = load %struct.visorchannel*, %struct.visorchannel** %10, align 8
  %101 = getelementptr inbounds %struct.visorchannel, %struct.visorchannel* %100, i32 0, i32 4
  store i32* null, i32** %101, align 8
  %102 = load %struct.visorchannel*, %struct.visorchannel** %10, align 8
  %103 = getelementptr inbounds %struct.visorchannel, %struct.visorchannel* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* %12, align 8
  %106 = load i32, i32* @VISOR_DRV_NAME, align 4
  %107 = call i8* @request_mem_region(i64 %104, i64 %105, i32 %106)
  %108 = load %struct.visorchannel*, %struct.visorchannel** %10, align 8
  %109 = getelementptr inbounds %struct.visorchannel, %struct.visorchannel* %108, i32 0, i32 5
  store i8* %107, i8** %109, align 8
  %110 = load %struct.visorchannel*, %struct.visorchannel** %10, align 8
  %111 = getelementptr inbounds %struct.visorchannel, %struct.visorchannel* %110, i32 0, i32 5
  %112 = load i8*, i8** %111, align 8
  %113 = icmp ne i8* %112, null
  br i1 %113, label %119, label %114

114:                                              ; preds = %99
  %115 = load i32*, i32** %8, align 8
  %116 = call i32 @guid_equal(i32* %115, i32* @visor_video_guid)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %119, label %118

118:                                              ; preds = %114
  br label %148

119:                                              ; preds = %114, %99
  %120 = load %struct.visorchannel*, %struct.visorchannel** %10, align 8
  %121 = getelementptr inbounds %struct.visorchannel, %struct.visorchannel* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* %12, align 8
  %124 = load i32, i32* @MEMREMAP_WB, align 4
  %125 = call i8* @memremap(i64 %122, i64 %123, i32 %124)
  %126 = bitcast i8* %125 to i32*
  %127 = load %struct.visorchannel*, %struct.visorchannel** %10, align 8
  %128 = getelementptr inbounds %struct.visorchannel, %struct.visorchannel* %127, i32 0, i32 4
  store i32* %126, i32** %128, align 8
  %129 = load %struct.visorchannel*, %struct.visorchannel** %10, align 8
  %130 = getelementptr inbounds %struct.visorchannel, %struct.visorchannel* %129, i32 0, i32 4
  %131 = load i32*, i32** %130, align 8
  %132 = icmp ne i32* %131, null
  br i1 %132, label %139, label %133

133:                                              ; preds = %119
  %134 = load %struct.visorchannel*, %struct.visorchannel** %10, align 8
  %135 = getelementptr inbounds %struct.visorchannel, %struct.visorchannel* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* %12, align 8
  %138 = call i32 @release_mem_region(i64 %136, i64 %137)
  br label %148

139:                                              ; preds = %119
  %140 = load i64, i64* %12, align 8
  %141 = load %struct.visorchannel*, %struct.visorchannel** %10, align 8
  %142 = getelementptr inbounds %struct.visorchannel, %struct.visorchannel* %141, i32 0, i32 2
  store i64 %140, i64* %142, align 8
  %143 = load %struct.visorchannel*, %struct.visorchannel** %10, align 8
  %144 = getelementptr inbounds %struct.visorchannel, %struct.visorchannel* %143, i32 0, i32 3
  %145 = load i32*, i32** %8, align 8
  %146 = call i32 @guid_copy(i32* %144, i32* %145)
  %147 = load %struct.visorchannel*, %struct.visorchannel** %10, align 8
  store %struct.visorchannel* %147, %struct.visorchannel** %5, align 8
  br label %151

148:                                              ; preds = %133, %118, %77, %59, %46
  %149 = load %struct.visorchannel*, %struct.visorchannel** %10, align 8
  %150 = call i32 @visorchannel_destroy(%struct.visorchannel* %149)
  store %struct.visorchannel* null, %struct.visorchannel** %5, align 8
  br label %151

151:                                              ; preds = %148, %139, %21, %15
  %152 = load %struct.visorchannel*, %struct.visorchannel** %5, align 8
  ret %struct.visorchannel* %152
}

declare dso_local %struct.visorchannel* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i8* @request_mem_region(i64, i64, i32) #1

declare dso_local i32 @guid_equal(i32*, i32*) #1

declare dso_local i8* @memremap(i64, i64, i32) #1

declare dso_local i32 @release_mem_region(i64, i64) #1

declare dso_local i32 @visorchannel_read(%struct.visorchannel*, i32, %struct.TYPE_2__*, i64) #1

declare dso_local i32 @memunmap(i32*) #1

declare dso_local i32 @guid_copy(i32*, i32*) #1

declare dso_local i32 @visorchannel_destroy(%struct.visorchannel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

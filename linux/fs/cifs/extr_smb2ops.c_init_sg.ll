; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_smb2ops.c_init_sg.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_smb2ops.c_init_sg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scatterlist = type { i32 }
%struct.smb_rqst = type { i32, i32, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@SMB2_SIGNATURE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.scatterlist* (i32, %struct.smb_rqst*, i32*)* @init_sg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.scatterlist* @init_sg(i32 %0, %struct.smb_rqst* %1, i32* %2) #0 {
  %4 = alloca %struct.scatterlist*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.smb_rqst*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.scatterlist*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.smb_rqst* %1, %struct.smb_rqst** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %12, align 4
  store i32 1, i32* %8, align 4
  store i32 0, i32* %10, align 4
  br label %16

16:                                               ; preds = %36, %3
  %17 = load i32, i32* %10, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp ult i32 %17, %18
  br i1 %19, label %20, label %39

20:                                               ; preds = %16
  %21 = load %struct.smb_rqst*, %struct.smb_rqst** %6, align 8
  %22 = load i32, i32* %10, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %21, i64 %23
  %25 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.smb_rqst*, %struct.smb_rqst** %6, align 8
  %28 = load i32, i32* %10, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %27, i64 %29
  %31 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = add i32 %26, %32
  %34 = load i32, i32* %8, align 4
  %35 = add i32 %34, %33
  store i32 %35, i32* %8, align 4
  br label %36

36:                                               ; preds = %20
  %37 = load i32, i32* %10, align 4
  %38 = add i32 %37, 1
  store i32 %38, i32* %10, align 4
  br label %16

39:                                               ; preds = %16
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @GFP_KERNEL, align 4
  %42 = call %struct.scatterlist* @kmalloc_array(i32 %40, i32 4, i32 %41)
  store %struct.scatterlist* %42, %struct.scatterlist** %9, align 8
  %43 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %44 = icmp ne %struct.scatterlist* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %39
  store %struct.scatterlist* null, %struct.scatterlist** %4, align 8
  br label %162

46:                                               ; preds = %39
  %47 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @sg_init_table(%struct.scatterlist* %47, i32 %48)
  store i32 0, i32* %10, align 4
  br label %50

50:                                               ; preds = %150, %46
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* %5, align 4
  %53 = icmp ult i32 %51, %52
  br i1 %53, label %54, label %153

54:                                               ; preds = %50
  store i32 0, i32* %11, align 4
  br label %55

55:                                               ; preds = %108, %54
  %56 = load i32, i32* %11, align 4
  %57 = load %struct.smb_rqst*, %struct.smb_rqst** %6, align 8
  %58 = load i32, i32* %10, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %57, i64 %59
  %61 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp ult i32 %56, %62
  br i1 %63, label %64, label %111

64:                                               ; preds = %55
  %65 = load i32, i32* %10, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %64
  %68 = load i32, i32* %11, align 4
  %69 = icmp eq i32 %68, 0
  br label %70

70:                                               ; preds = %67, %64
  %71 = phi i1 [ false, %64 ], [ %69, %67 ]
  %72 = zext i1 %71 to i64
  %73 = select i1 %71, i32 20, i32 0
  store i32 %73, i32* %13, align 4
  %74 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %75 = load i32, i32* %12, align 4
  %76 = add i32 %75, 1
  store i32 %76, i32* %12, align 4
  %77 = zext i32 %75 to i64
  %78 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %74, i64 %77
  %79 = load %struct.smb_rqst*, %struct.smb_rqst** %6, align 8
  %80 = load i32, i32* %10, align 4
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %79, i64 %81
  %83 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %82, i32 0, i32 3
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = load i32, i32* %11, align 4
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 1
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %13, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load %struct.smb_rqst*, %struct.smb_rqst** %6, align 8
  %94 = load i32, i32* %10, align 4
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %93, i64 %95
  %97 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %96, i32 0, i32 3
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** %97, align 8
  %99 = load i32, i32* %11, align 4
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i32, i32* %13, align 4
  %105 = sext i32 %104 to i64
  %106 = sub nsw i64 %103, %105
  %107 = call i32 @smb2_sg_set_buf(%struct.scatterlist* %78, i32* %92, i64 %106)
  br label %108

108:                                              ; preds = %70
  %109 = load i32, i32* %11, align 4
  %110 = add i32 %109, 1
  store i32 %110, i32* %11, align 4
  br label %55

111:                                              ; preds = %55
  store i32 0, i32* %11, align 4
  br label %112

112:                                              ; preds = %146, %111
  %113 = load i32, i32* %11, align 4
  %114 = load %struct.smb_rqst*, %struct.smb_rqst** %6, align 8
  %115 = load i32, i32* %10, align 4
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %114, i64 %116
  %118 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = icmp ult i32 %113, %119
  br i1 %120, label %121, label %149

121:                                              ; preds = %112
  %122 = load %struct.smb_rqst*, %struct.smb_rqst** %6, align 8
  %123 = load i32, i32* %10, align 4
  %124 = zext i32 %123 to i64
  %125 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %122, i64 %124
  %126 = load i32, i32* %11, align 4
  %127 = call i32 @rqst_page_get_length(%struct.smb_rqst* %125, i32 %126, i32* %14, i32* %15)
  %128 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %129 = load i32, i32* %12, align 4
  %130 = add i32 %129, 1
  store i32 %130, i32* %12, align 4
  %131 = zext i32 %129 to i64
  %132 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %128, i64 %131
  %133 = load %struct.smb_rqst*, %struct.smb_rqst** %6, align 8
  %134 = load i32, i32* %10, align 4
  %135 = zext i32 %134 to i64
  %136 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %133, i64 %135
  %137 = getelementptr inbounds %struct.smb_rqst, %struct.smb_rqst* %136, i32 0, i32 2
  %138 = load i32*, i32** %137, align 8
  %139 = load i32, i32* %11, align 4
  %140 = zext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %138, i64 %140
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* %14, align 4
  %144 = load i32, i32* %15, align 4
  %145 = call i32 @sg_set_page(%struct.scatterlist* %132, i32 %142, i32 %143, i32 %144)
  br label %146

146:                                              ; preds = %121
  %147 = load i32, i32* %11, align 4
  %148 = add i32 %147, 1
  store i32 %148, i32* %11, align 4
  br label %112

149:                                              ; preds = %112
  br label %150

150:                                              ; preds = %149
  %151 = load i32, i32* %10, align 4
  %152 = add i32 %151, 1
  store i32 %152, i32* %10, align 4
  br label %50

153:                                              ; preds = %50
  %154 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %155 = load i32, i32* %12, align 4
  %156 = zext i32 %155 to i64
  %157 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %154, i64 %156
  %158 = load i32*, i32** %7, align 8
  %159 = load i64, i64* @SMB2_SIGNATURE_SIZE, align 8
  %160 = call i32 @smb2_sg_set_buf(%struct.scatterlist* %157, i32* %158, i64 %159)
  %161 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  store %struct.scatterlist* %161, %struct.scatterlist** %4, align 8
  br label %162

162:                                              ; preds = %153, %45
  %163 = load %struct.scatterlist*, %struct.scatterlist** %4, align 8
  ret %struct.scatterlist* %163
}

declare dso_local %struct.scatterlist* @kmalloc_array(i32, i32, i32) #1

declare dso_local i32 @sg_init_table(%struct.scatterlist*, i32) #1

declare dso_local i32 @smb2_sg_set_buf(%struct.scatterlist*, i32*, i64) #1

declare dso_local i32 @rqst_page_get_length(%struct.smb_rqst*, i32, i32*, i32*) #1

declare dso_local i32 @sg_set_page(%struct.scatterlist*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/mmp/fb/extr_mmpfb.c_pixfmt_to_var.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/mmp/fb/extr_mmpfb.c_pixfmt_to_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_var_screeninfo = type { i32, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_var_screeninfo*, i32)* @pixfmt_to_var to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pixfmt_to_var(%struct.fb_var_screeninfo* %0, i32 %1) #0 {
  %3 = alloca %struct.fb_var_screeninfo*, align 8
  %4 = alloca i32, align 4
  store %struct.fb_var_screeninfo* %0, %struct.fb_var_screeninfo** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %438 [
    i32 138, label %6
    i32 143, label %33
    i32 136, label %60
    i32 141, label %87
    i32 135, label %114
    i32 140, label %141
    i32 137, label %168
    i32 142, label %195
    i32 132, label %222
    i32 129, label %249
    i32 131, label %276
    i32 128, label %303
    i32 134, label %330
    i32 133, label %357
    i32 130, label %384
    i32 139, label %411
  ]

6:                                                ; preds = %2
  %7 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %8 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %7, i32 0, i32 0
  store i32 16, i32* %8, align 4
  %9 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %10 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %9, i32 0, i32 4
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  store i32 11, i32* %11, align 4
  %12 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %13 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %12, i32 0, i32 4
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 1
  store i32 5, i32* %14, align 4
  %15 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %16 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  store i32 5, i32* %17, align 4
  %18 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %19 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %18, i32 0, i32 3
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  store i32 6, i32* %20, align 4
  %21 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %22 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  store i32 0, i32* %23, align 4
  %24 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %25 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 1
  store i32 5, i32* %26, align 4
  %27 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %28 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  store i32 0, i32* %29, align 4
  %30 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %31 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 1
  store i32 0, i32* %32, align 4
  br label %438

33:                                               ; preds = %2
  %34 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %35 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %34, i32 0, i32 0
  store i32 16, i32* %35, align 4
  %36 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %37 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %36, i32 0, i32 4
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  store i32 0, i32* %38, align 4
  %39 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %40 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %39, i32 0, i32 4
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 1
  store i32 5, i32* %41, align 4
  %42 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %43 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %42, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  store i32 5, i32* %44, align 4
  %45 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %46 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  store i32 6, i32* %47, align 4
  %48 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %49 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  store i32 11, i32* %50, align 4
  %51 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %52 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 1
  store i32 5, i32* %53, align 4
  %54 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %55 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  store i32 0, i32* %56, align 4
  %57 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %58 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 1
  store i32 0, i32* %59, align 4
  br label %438

60:                                               ; preds = %2
  %61 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %62 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %61, i32 0, i32 0
  store i32 32, i32* %62, align 4
  %63 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %64 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %63, i32 0, i32 4
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  store i32 16, i32* %65, align 4
  %66 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %67 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %66, i32 0, i32 4
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 1
  store i32 8, i32* %68, align 4
  %69 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %70 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %69, i32 0, i32 3
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  store i32 8, i32* %71, align 4
  %72 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %73 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 1
  store i32 8, i32* %74, align 4
  %75 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %76 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  store i32 0, i32* %77, align 4
  %78 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %79 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 1
  store i32 8, i32* %80, align 4
  %81 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %82 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  store i32 0, i32* %83, align 4
  %84 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %85 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 1
  store i32 0, i32* %86, align 4
  br label %438

87:                                               ; preds = %2
  %88 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %89 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %88, i32 0, i32 0
  store i32 32, i32* %89, align 4
  %90 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %91 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %90, i32 0, i32 4
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 0
  store i32 0, i32* %92, align 4
  %93 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %94 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %93, i32 0, i32 4
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 1
  store i32 8, i32* %95, align 4
  %96 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %97 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %96, i32 0, i32 3
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  store i32 8, i32* %98, align 4
  %99 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %100 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %99, i32 0, i32 3
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 1
  store i32 8, i32* %101, align 4
  %102 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %103 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 0
  store i32 16, i32* %104, align 4
  %105 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %106 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 1
  store i32 8, i32* %107, align 4
  %108 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %109 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 0
  store i32 0, i32* %110, align 4
  %111 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %112 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 1
  store i32 0, i32* %113, align 4
  br label %438

114:                                              ; preds = %2
  %115 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %116 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %115, i32 0, i32 0
  store i32 32, i32* %116, align 4
  %117 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %118 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %117, i32 0, i32 4
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 0
  store i32 16, i32* %119, align 4
  %120 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %121 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %120, i32 0, i32 4
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 1
  store i32 8, i32* %122, align 4
  %123 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %124 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %123, i32 0, i32 3
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 0
  store i32 8, i32* %125, align 4
  %126 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %127 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %126, i32 0, i32 3
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 1
  store i32 8, i32* %128, align 4
  %129 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %130 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %129, i32 0, i32 2
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 0
  store i32 0, i32* %131, align 4
  %132 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %133 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %132, i32 0, i32 2
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 1
  store i32 8, i32* %134, align 4
  %135 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %136 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 0
  store i32 24, i32* %137, align 4
  %138 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %139 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 1
  store i32 8, i32* %140, align 4
  br label %438

141:                                              ; preds = %2
  %142 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %143 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %142, i32 0, i32 0
  store i32 32, i32* %143, align 4
  %144 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %145 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %144, i32 0, i32 4
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 0
  store i32 0, i32* %146, align 4
  %147 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %148 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %147, i32 0, i32 4
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 1
  store i32 8, i32* %149, align 4
  %150 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %151 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %150, i32 0, i32 3
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 0
  store i32 8, i32* %152, align 4
  %153 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %154 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %153, i32 0, i32 3
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 1
  store i32 8, i32* %155, align 4
  %156 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %157 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %156, i32 0, i32 2
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i32 0, i32 0
  store i32 16, i32* %158, align 4
  %159 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %160 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %159, i32 0, i32 2
  %161 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i32 0, i32 1
  store i32 8, i32* %161, align 4
  %162 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %163 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %162, i32 0, i32 1
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i32 0, i32 0
  store i32 24, i32* %164, align 4
  %165 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %166 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %166, i32 0, i32 1
  store i32 8, i32* %167, align 4
  br label %438

168:                                              ; preds = %2
  %169 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %170 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %169, i32 0, i32 0
  store i32 24, i32* %170, align 4
  %171 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %172 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %171, i32 0, i32 4
  %173 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %172, i32 0, i32 0
  store i32 16, i32* %173, align 4
  %174 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %175 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %174, i32 0, i32 4
  %176 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %175, i32 0, i32 1
  store i32 8, i32* %176, align 4
  %177 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %178 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %177, i32 0, i32 3
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i32 0, i32 0
  store i32 8, i32* %179, align 4
  %180 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %181 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %180, i32 0, i32 3
  %182 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %181, i32 0, i32 1
  store i32 8, i32* %182, align 4
  %183 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %184 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %183, i32 0, i32 2
  %185 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %184, i32 0, i32 0
  store i32 0, i32* %185, align 4
  %186 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %187 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %186, i32 0, i32 2
  %188 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %187, i32 0, i32 1
  store i32 8, i32* %188, align 4
  %189 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %190 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %189, i32 0, i32 1
  %191 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %190, i32 0, i32 0
  store i32 0, i32* %191, align 4
  %192 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %193 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %192, i32 0, i32 1
  %194 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %193, i32 0, i32 1
  store i32 0, i32* %194, align 4
  br label %438

195:                                              ; preds = %2
  %196 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %197 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %196, i32 0, i32 0
  store i32 24, i32* %197, align 4
  %198 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %199 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %198, i32 0, i32 4
  %200 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %199, i32 0, i32 0
  store i32 0, i32* %200, align 4
  %201 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %202 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %201, i32 0, i32 4
  %203 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %202, i32 0, i32 1
  store i32 8, i32* %203, align 4
  %204 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %205 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %204, i32 0, i32 3
  %206 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %205, i32 0, i32 0
  store i32 8, i32* %206, align 4
  %207 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %208 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %207, i32 0, i32 3
  %209 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %208, i32 0, i32 1
  store i32 8, i32* %209, align 4
  %210 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %211 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %210, i32 0, i32 2
  %212 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %211, i32 0, i32 0
  store i32 16, i32* %212, align 4
  %213 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %214 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %213, i32 0, i32 2
  %215 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %214, i32 0, i32 1
  store i32 8, i32* %215, align 4
  %216 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %217 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %216, i32 0, i32 1
  %218 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %217, i32 0, i32 0
  store i32 0, i32* %218, align 4
  %219 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %220 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %219, i32 0, i32 1
  %221 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %220, i32 0, i32 1
  store i32 0, i32* %221, align 4
  br label %438

222:                                              ; preds = %2
  %223 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %224 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %223, i32 0, i32 0
  store i32 12, i32* %224, align 4
  %225 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %226 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %225, i32 0, i32 4
  %227 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %226, i32 0, i32 0
  store i32 4, i32* %227, align 4
  %228 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %229 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %228, i32 0, i32 4
  %230 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %229, i32 0, i32 1
  store i32 8, i32* %230, align 4
  %231 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %232 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %231, i32 0, i32 3
  %233 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %232, i32 0, i32 0
  store i32 2, i32* %233, align 4
  %234 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %235 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %234, i32 0, i32 3
  %236 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %235, i32 0, i32 1
  store i32 2, i32* %236, align 4
  %237 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %238 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %237, i32 0, i32 2
  %239 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %238, i32 0, i32 0
  store i32 0, i32* %239, align 4
  %240 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %241 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %240, i32 0, i32 2
  %242 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %241, i32 0, i32 1
  store i32 2, i32* %242, align 4
  %243 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %244 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %243, i32 0, i32 1
  %245 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %244, i32 0, i32 0
  store i32 0, i32* %245, align 4
  %246 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %247 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %246, i32 0, i32 1
  %248 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %247, i32 0, i32 1
  store i32 0, i32* %248, align 4
  br label %438

249:                                              ; preds = %2
  %250 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %251 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %250, i32 0, i32 0
  store i32 12, i32* %251, align 4
  %252 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %253 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %252, i32 0, i32 4
  %254 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %253, i32 0, i32 0
  store i32 4, i32* %254, align 4
  %255 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %256 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %255, i32 0, i32 4
  %257 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %256, i32 0, i32 1
  store i32 8, i32* %257, align 4
  %258 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %259 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %258, i32 0, i32 3
  %260 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %259, i32 0, i32 0
  store i32 0, i32* %260, align 4
  %261 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %262 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %261, i32 0, i32 3
  %263 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %262, i32 0, i32 1
  store i32 2, i32* %263, align 4
  %264 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %265 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %264, i32 0, i32 2
  %266 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %265, i32 0, i32 0
  store i32 2, i32* %266, align 4
  %267 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %268 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %267, i32 0, i32 2
  %269 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %268, i32 0, i32 1
  store i32 2, i32* %269, align 4
  %270 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %271 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %270, i32 0, i32 1
  %272 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %271, i32 0, i32 0
  store i32 0, i32* %272, align 4
  %273 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %274 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %273, i32 0, i32 1
  %275 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %274, i32 0, i32 1
  store i32 0, i32* %275, align 4
  br label %438

276:                                              ; preds = %2
  %277 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %278 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %277, i32 0, i32 0
  store i32 16, i32* %278, align 4
  %279 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %280 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %279, i32 0, i32 4
  %281 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %280, i32 0, i32 0
  store i32 8, i32* %281, align 4
  %282 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %283 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %282, i32 0, i32 4
  %284 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %283, i32 0, i32 1
  store i32 8, i32* %284, align 4
  %285 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %286 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %285, i32 0, i32 3
  %287 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %286, i32 0, i32 0
  store i32 4, i32* %287, align 4
  %288 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %289 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %288, i32 0, i32 3
  %290 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %289, i32 0, i32 1
  store i32 4, i32* %290, align 4
  %291 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %292 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %291, i32 0, i32 2
  %293 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %292, i32 0, i32 0
  store i32 0, i32* %293, align 4
  %294 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %295 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %294, i32 0, i32 2
  %296 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %295, i32 0, i32 1
  store i32 4, i32* %296, align 4
  %297 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %298 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %297, i32 0, i32 1
  %299 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %298, i32 0, i32 0
  store i32 0, i32* %299, align 4
  %300 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %301 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %300, i32 0, i32 1
  %302 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %301, i32 0, i32 1
  store i32 0, i32* %302, align 4
  br label %438

303:                                              ; preds = %2
  %304 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %305 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %304, i32 0, i32 0
  store i32 16, i32* %305, align 4
  %306 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %307 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %306, i32 0, i32 4
  %308 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %307, i32 0, i32 0
  store i32 8, i32* %308, align 4
  %309 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %310 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %309, i32 0, i32 4
  %311 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %310, i32 0, i32 1
  store i32 8, i32* %311, align 4
  %312 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %313 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %312, i32 0, i32 3
  %314 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %313, i32 0, i32 0
  store i32 0, i32* %314, align 4
  %315 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %316 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %315, i32 0, i32 3
  %317 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %316, i32 0, i32 1
  store i32 4, i32* %317, align 4
  %318 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %319 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %318, i32 0, i32 2
  %320 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %319, i32 0, i32 0
  store i32 4, i32* %320, align 4
  %321 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %322 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %321, i32 0, i32 2
  %323 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %322, i32 0, i32 1
  store i32 4, i32* %323, align 4
  %324 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %325 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %324, i32 0, i32 1
  %326 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %325, i32 0, i32 0
  store i32 0, i32* %326, align 4
  %327 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %328 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %327, i32 0, i32 1
  %329 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %328, i32 0, i32 1
  store i32 0, i32* %329, align 4
  br label %438

330:                                              ; preds = %2
  %331 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %332 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %331, i32 0, i32 0
  store i32 16, i32* %332, align 4
  %333 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %334 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %333, i32 0, i32 4
  %335 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %334, i32 0, i32 0
  store i32 8, i32* %335, align 4
  %336 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %337 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %336, i32 0, i32 4
  %338 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %337, i32 0, i32 1
  store i32 16, i32* %338, align 4
  %339 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %340 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %339, i32 0, i32 3
  %341 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %340, i32 0, i32 0
  store i32 4, i32* %341, align 4
  %342 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %343 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %342, i32 0, i32 3
  %344 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %343, i32 0, i32 1
  store i32 16, i32* %344, align 4
  %345 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %346 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %345, i32 0, i32 2
  %347 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %346, i32 0, i32 0
  store i32 0, i32* %347, align 4
  %348 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %349 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %348, i32 0, i32 2
  %350 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %349, i32 0, i32 1
  store i32 16, i32* %350, align 4
  %351 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %352 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %351, i32 0, i32 1
  %353 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %352, i32 0, i32 0
  store i32 0, i32* %353, align 4
  %354 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %355 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %354, i32 0, i32 1
  %356 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %355, i32 0, i32 1
  store i32 0, i32* %356, align 4
  br label %438

357:                                              ; preds = %2
  %358 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %359 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %358, i32 0, i32 0
  store i32 16, i32* %359, align 4
  %360 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %361 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %360, i32 0, i32 4
  %362 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %361, i32 0, i32 0
  store i32 8, i32* %362, align 4
  %363 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %364 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %363, i32 0, i32 4
  %365 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %364, i32 0, i32 1
  store i32 16, i32* %365, align 4
  %366 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %367 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %366, i32 0, i32 3
  %368 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %367, i32 0, i32 0
  store i32 0, i32* %368, align 4
  %369 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %370 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %369, i32 0, i32 3
  %371 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %370, i32 0, i32 1
  store i32 16, i32* %371, align 4
  %372 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %373 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %372, i32 0, i32 2
  %374 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %373, i32 0, i32 0
  store i32 4, i32* %374, align 4
  %375 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %376 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %375, i32 0, i32 2
  %377 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %376, i32 0, i32 1
  store i32 16, i32* %377, align 4
  %378 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %379 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %378, i32 0, i32 1
  %380 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %379, i32 0, i32 0
  store i32 0, i32* %380, align 4
  %381 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %382 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %381, i32 0, i32 1
  %383 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %382, i32 0, i32 1
  store i32 0, i32* %383, align 4
  br label %438

384:                                              ; preds = %2
  %385 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %386 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %385, i32 0, i32 0
  store i32 16, i32* %386, align 4
  %387 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %388 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %387, i32 0, i32 4
  %389 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %388, i32 0, i32 0
  store i32 0, i32* %389, align 4
  %390 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %391 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %390, i32 0, i32 4
  %392 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %391, i32 0, i32 1
  store i32 16, i32* %392, align 4
  %393 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %394 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %393, i32 0, i32 3
  %395 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %394, i32 0, i32 0
  store i32 4, i32* %395, align 4
  %396 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %397 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %396, i32 0, i32 3
  %398 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %397, i32 0, i32 1
  store i32 16, i32* %398, align 4
  %399 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %400 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %399, i32 0, i32 2
  %401 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %400, i32 0, i32 0
  store i32 8, i32* %401, align 4
  %402 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %403 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %402, i32 0, i32 2
  %404 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %403, i32 0, i32 1
  store i32 16, i32* %404, align 4
  %405 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %406 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %405, i32 0, i32 1
  %407 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %406, i32 0, i32 0
  store i32 0, i32* %407, align 4
  %408 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %409 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %408, i32 0, i32 1
  %410 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %409, i32 0, i32 1
  store i32 0, i32* %410, align 4
  br label %438

411:                                              ; preds = %2
  %412 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %413 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %412, i32 0, i32 0
  store i32 8, i32* %413, align 4
  %414 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %415 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %414, i32 0, i32 4
  %416 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %415, i32 0, i32 0
  store i32 0, i32* %416, align 4
  %417 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %418 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %417, i32 0, i32 4
  %419 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %418, i32 0, i32 1
  store i32 8, i32* %419, align 4
  %420 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %421 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %420, i32 0, i32 3
  %422 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %421, i32 0, i32 0
  store i32 0, i32* %422, align 4
  %423 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %424 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %423, i32 0, i32 3
  %425 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %424, i32 0, i32 1
  store i32 8, i32* %425, align 4
  %426 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %427 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %426, i32 0, i32 2
  %428 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %427, i32 0, i32 0
  store i32 0, i32* %428, align 4
  %429 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %430 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %429, i32 0, i32 2
  %431 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %430, i32 0, i32 1
  store i32 8, i32* %431, align 4
  %432 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %433 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %432, i32 0, i32 1
  %434 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %433, i32 0, i32 0
  store i32 0, i32* %434, align 4
  %435 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %436 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %435, i32 0, i32 1
  %437 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %436, i32 0, i32 1
  store i32 0, i32* %437, align 4
  br label %438

438:                                              ; preds = %2, %411, %384, %357, %330, %303, %276, %249, %222, %195, %168, %141, %114, %87, %60, %33, %6
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

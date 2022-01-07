; ModuleID = '/home/carl/AnghaBench/linux/fs/adfs/extr_dir_f.c_adfs_f_update.c'
source_filename = "/home/carl/AnghaBench/linux/fs/adfs/extr_dir_f.c_adfs_f_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adfs_dir = type { i32, %struct.super_block*, %struct.TYPE_7__**, %struct.TYPE_6__, %struct.TYPE_6__ }
%struct.super_block = type { i32, i32 }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_6__ = type { i64, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i64, i8, i32 }
%struct.object_info = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"unable to locate entry to update\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"Nick\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"Hugo\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"whoops!  I broke a directory!\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adfs_dir*, %struct.object_info*)* @adfs_f_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adfs_f_update(%struct.adfs_dir* %0, %struct.object_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.adfs_dir*, align 8
  %5 = alloca %struct.object_info*, align 8
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.adfs_dir* %0, %struct.adfs_dir** %4, align 8
  store %struct.object_info* %1, %struct.object_info** %5, align 8
  %10 = load %struct.adfs_dir*, %struct.adfs_dir** %4, align 8
  %11 = getelementptr inbounds %struct.adfs_dir, %struct.adfs_dir* %10, i32 0, i32 1
  %12 = load %struct.super_block*, %struct.super_block** %11, align 8
  store %struct.super_block* %12, %struct.super_block** %6, align 8
  %13 = load %struct.adfs_dir*, %struct.adfs_dir** %4, align 8
  %14 = load %struct.object_info*, %struct.object_info** %5, align 8
  %15 = getelementptr inbounds %struct.object_info, %struct.object_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @adfs_dir_find_entry(%struct.adfs_dir* %13, i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %2
  %21 = load %struct.adfs_dir*, %struct.adfs_dir** %4, align 8
  %22 = getelementptr inbounds %struct.adfs_dir, %struct.adfs_dir* %21, i32 0, i32 1
  %23 = load %struct.super_block*, %struct.super_block** %22, align 8
  %24 = call i32 @adfs_error(%struct.super_block* %23, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %163

25:                                               ; preds = %2
  %26 = load %struct.adfs_dir*, %struct.adfs_dir** %4, align 8
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.object_info*, %struct.object_info** %5, align 8
  %29 = call i32 @__adfs_dir_put(%struct.adfs_dir* %26, i32 %27, %struct.object_info* %28)
  %30 = load %struct.adfs_dir*, %struct.adfs_dir** %4, align 8
  %31 = getelementptr inbounds %struct.adfs_dir, %struct.adfs_dir* %30, i32 0, i32 2
  %32 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %32, i64 0
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %37, align 4
  %40 = load %struct.adfs_dir*, %struct.adfs_dir** %4, align 8
  %41 = getelementptr inbounds %struct.adfs_dir, %struct.adfs_dir* %40, i32 0, i32 2
  %42 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %41, align 8
  %43 = load %struct.adfs_dir*, %struct.adfs_dir** %4, align 8
  %44 = getelementptr inbounds %struct.adfs_dir, %struct.adfs_dir* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = sub nsw i32 %45, 1
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %42, i64 %47
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load %struct.super_block*, %struct.super_block** %6, align 8
  %53 = getelementptr inbounds %struct.super_block, %struct.super_block* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = sub nsw i32 %54, 6
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %51, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %57, align 4
  %60 = load %struct.adfs_dir*, %struct.adfs_dir** %4, align 8
  %61 = call i32 @adfs_dir_checkbyte(%struct.adfs_dir* %60)
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* %7, align 4
  %63 = load %struct.adfs_dir*, %struct.adfs_dir** %4, align 8
  %64 = getelementptr inbounds %struct.adfs_dir, %struct.adfs_dir* %63, i32 0, i32 2
  %65 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %64, align 8
  %66 = load %struct.adfs_dir*, %struct.adfs_dir** %4, align 8
  %67 = getelementptr inbounds %struct.adfs_dir, %struct.adfs_dir* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = sub nsw i32 %68, 1
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %65, i64 %70
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = load %struct.super_block*, %struct.super_block** %6, align 8
  %76 = getelementptr inbounds %struct.super_block, %struct.super_block* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = sub nsw i32 %77, 1
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %74, i64 %79
  store i32 %62, i32* %80, align 4
  %81 = load %struct.super_block*, %struct.super_block** %6, align 8
  %82 = getelementptr inbounds %struct.super_block, %struct.super_block* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  store i32 %83, i32* %9, align 4
  %84 = load %struct.adfs_dir*, %struct.adfs_dir** %4, align 8
  %85 = getelementptr inbounds %struct.adfs_dir, %struct.adfs_dir* %84, i32 0, i32 4
  %86 = load %struct.adfs_dir*, %struct.adfs_dir** %4, align 8
  %87 = getelementptr inbounds %struct.adfs_dir, %struct.adfs_dir* %86, i32 0, i32 2
  %88 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %87, align 8
  %89 = call i32 @bufoff(%struct.TYPE_7__** %88, i32 0)
  %90 = call i32 @memcpy(%struct.TYPE_6__* %85, i32 %89, i32 32)
  %91 = load %struct.adfs_dir*, %struct.adfs_dir** %4, align 8
  %92 = getelementptr inbounds %struct.adfs_dir, %struct.adfs_dir* %91, i32 0, i32 3
  %93 = load %struct.adfs_dir*, %struct.adfs_dir** %4, align 8
  %94 = getelementptr inbounds %struct.adfs_dir, %struct.adfs_dir* %93, i32 0, i32 2
  %95 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %94, align 8
  %96 = call i32 @bufoff(%struct.TYPE_7__** %95, i32 2007)
  %97 = call i32 @memcpy(%struct.TYPE_6__* %92, i32 %96, i32 32)
  %98 = load %struct.adfs_dir*, %struct.adfs_dir** %4, align 8
  %99 = getelementptr inbounds %struct.adfs_dir, %struct.adfs_dir* %98, i32 0, i32 4
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.adfs_dir*, %struct.adfs_dir** %4, align 8
  %103 = getelementptr inbounds %struct.adfs_dir, %struct.adfs_dir* %102, i32 0, i32 3
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %101, %106
  br i1 %107, label %118, label %108

108:                                              ; preds = %25
  %109 = load %struct.adfs_dir*, %struct.adfs_dir** %4, align 8
  %110 = getelementptr inbounds %struct.adfs_dir, %struct.adfs_dir* %109, i32 0, i32 4
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 2
  %112 = load %struct.adfs_dir*, %struct.adfs_dir** %4, align 8
  %113 = getelementptr inbounds %struct.adfs_dir, %struct.adfs_dir* %112, i32 0, i32 3
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 1
  %116 = call i64 @memcmp(i32* %111, i8* %115, i32 4)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %108, %25
  br label %165

119:                                              ; preds = %108
  %120 = load %struct.adfs_dir*, %struct.adfs_dir** %4, align 8
  %121 = getelementptr inbounds %struct.adfs_dir, %struct.adfs_dir* %120, i32 0, i32 4
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 2
  %123 = call i64 @memcmp(i32* %122, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %132

125:                                              ; preds = %119
  %126 = load %struct.adfs_dir*, %struct.adfs_dir** %4, align 8
  %127 = getelementptr inbounds %struct.adfs_dir, %struct.adfs_dir* %126, i32 0, i32 4
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 2
  %129 = call i64 @memcmp(i32* %128, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 4)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %125
  br label %165

132:                                              ; preds = %125, %119
  %133 = load %struct.adfs_dir*, %struct.adfs_dir** %4, align 8
  %134 = call i32 @adfs_dir_checkbyte(%struct.adfs_dir* %133)
  %135 = load %struct.adfs_dir*, %struct.adfs_dir** %4, align 8
  %136 = getelementptr inbounds %struct.adfs_dir, %struct.adfs_dir* %135, i32 0, i32 3
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 4
  %140 = icmp ne i32 %134, %139
  br i1 %140, label %141, label %142

141:                                              ; preds = %132
  br label %165

142:                                              ; preds = %132
  %143 = load %struct.adfs_dir*, %struct.adfs_dir** %4, align 8
  %144 = getelementptr inbounds %struct.adfs_dir, %struct.adfs_dir* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = sub nsw i32 %145, 1
  store i32 %146, i32* %8, align 4
  br label %147

147:                                              ; preds = %159, %142
  %148 = load i32, i32* %8, align 4
  %149 = icmp sge i32 %148, 0
  br i1 %149, label %150, label %162

150:                                              ; preds = %147
  %151 = load %struct.adfs_dir*, %struct.adfs_dir** %4, align 8
  %152 = getelementptr inbounds %struct.adfs_dir, %struct.adfs_dir* %151, i32 0, i32 2
  %153 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %152, align 8
  %154 = load i32, i32* %8, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %153, i64 %155
  %157 = load %struct.TYPE_7__*, %struct.TYPE_7__** %156, align 8
  %158 = call i32 @mark_buffer_dirty(%struct.TYPE_7__* %157)
  br label %159

159:                                              ; preds = %150
  %160 = load i32, i32* %8, align 4
  %161 = add nsw i32 %160, -1
  store i32 %161, i32* %8, align 4
  br label %147

162:                                              ; preds = %147
  store i32 0, i32* %7, align 4
  br label %163

163:                                              ; preds = %162, %20
  %164 = load i32, i32* %7, align 4
  store i32 %164, i32* %3, align 4
  br label %172

165:                                              ; preds = %141, %131, %118
  %166 = load %struct.adfs_dir*, %struct.adfs_dir** %4, align 8
  %167 = getelementptr inbounds %struct.adfs_dir, %struct.adfs_dir* %166, i32 0, i32 1
  %168 = load %struct.super_block*, %struct.super_block** %167, align 8
  %169 = call i32 @adfs_error(%struct.super_block* %168, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %170 = load i32, i32* @EIO, align 4
  %171 = sub nsw i32 0, %170
  store i32 %171, i32* %3, align 4
  br label %172

172:                                              ; preds = %165, %163
  %173 = load i32, i32* %3, align 4
  ret i32 %173
}

declare dso_local i32 @adfs_dir_find_entry(%struct.adfs_dir*, i32) #1

declare dso_local i32 @adfs_error(%struct.super_block*, i8*) #1

declare dso_local i32 @__adfs_dir_put(%struct.adfs_dir*, i32, %struct.object_info*) #1

declare dso_local i32 @adfs_dir_checkbyte(%struct.adfs_dir*) #1

declare dso_local i32 @memcpy(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @bufoff(%struct.TYPE_7__**, i32) #1

declare dso_local i64 @memcmp(i32*, i8*, i32) #1

declare dso_local i32 @mark_buffer_dirty(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

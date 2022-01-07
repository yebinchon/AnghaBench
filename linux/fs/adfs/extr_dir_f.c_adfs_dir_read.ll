; ModuleID = '/home/carl/AnghaBench/linux/fs/adfs/extr_dir_f.c_adfs_dir_read.c'
source_filename = "/home/carl/AnghaBench/linux/fs/adfs/extr_dir_f.c_adfs_dir_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.adfs_dir = type { i32, %struct.super_block*, i32*, %struct.TYPE_4__, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i64, i8, i64 }

@.str = private unnamed_addr constant [33 x i8] c"dir %06x has a hole at offset %d\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"Nick\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"Hugo\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"dir %06x is corrupted\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i32, i32, %struct.adfs_dir*)* @adfs_dir_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adfs_dir_read(%struct.super_block* %0, i32 %1, i32 %2, %struct.adfs_dir* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.adfs_dir*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.adfs_dir* %3, %struct.adfs_dir** %9, align 8
  %13 = load %struct.super_block*, %struct.super_block** %6, align 8
  %14 = getelementptr inbounds %struct.super_block, %struct.super_block* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %16 = load i32, i32* %8, align 4
  %17 = and i32 %16, 2047
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  br label %131

20:                                               ; preds = %4
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* %8, align 4
  %23 = lshr i32 %22, %21
  store i32 %23, i32* %8, align 4
  %24 = load %struct.adfs_dir*, %struct.adfs_dir** %9, align 8
  %25 = getelementptr inbounds %struct.adfs_dir, %struct.adfs_dir* %24, i32 0, i32 0
  store i32 0, i32* %25, align 8
  %26 = load %struct.super_block*, %struct.super_block** %6, align 8
  %27 = load %struct.adfs_dir*, %struct.adfs_dir** %9, align 8
  %28 = getelementptr inbounds %struct.adfs_dir, %struct.adfs_dir* %27, i32 0, i32 1
  store %struct.super_block* %26, %struct.super_block** %28, align 8
  store i32 0, i32* %11, align 4
  br label %29

29:                                               ; preds = %65, %20
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp ult i32 %30, %31
  br i1 %32, label %33, label %68

33:                                               ; preds = %29
  %34 = load %struct.super_block*, %struct.super_block** %6, align 8
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %11, align 4
  %37 = call i32 @__adfs_block_map(%struct.super_block* %34, i32 %35, i32 %36)
  store i32 %37, i32* %12, align 4
  %38 = load i32, i32* %12, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %33
  %41 = load %struct.super_block*, %struct.super_block** %6, align 8
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %11, align 4
  %44 = call i32 (%struct.super_block*, i8*, i32, ...) @adfs_error(%struct.super_block* %41, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %43)
  br label %135

45:                                               ; preds = %33
  %46 = load %struct.super_block*, %struct.super_block** %6, align 8
  %47 = load i32, i32* %12, align 4
  %48 = call i32 @sb_bread(%struct.super_block* %46, i32 %47)
  %49 = load %struct.adfs_dir*, %struct.adfs_dir** %9, align 8
  %50 = getelementptr inbounds %struct.adfs_dir, %struct.adfs_dir* %49, i32 0, i32 2
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %11, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  store i32 %48, i32* %54, align 4
  %55 = load %struct.adfs_dir*, %struct.adfs_dir** %9, align 8
  %56 = getelementptr inbounds %struct.adfs_dir, %struct.adfs_dir* %55, i32 0, i32 2
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %11, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %45
  br label %135

64:                                               ; preds = %45
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %11, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %11, align 4
  br label %29

68:                                               ; preds = %29
  %69 = load %struct.adfs_dir*, %struct.adfs_dir** %9, align 8
  %70 = getelementptr inbounds %struct.adfs_dir, %struct.adfs_dir* %69, i32 0, i32 4
  %71 = load %struct.adfs_dir*, %struct.adfs_dir** %9, align 8
  %72 = getelementptr inbounds %struct.adfs_dir, %struct.adfs_dir* %71, i32 0, i32 2
  %73 = load i32*, i32** %72, align 8
  %74 = call i32 @bufoff(i32* %73, i32 0)
  %75 = call i32 @memcpy(%struct.TYPE_4__* %70, i32 %74, i32 40)
  %76 = load %struct.adfs_dir*, %struct.adfs_dir** %9, align 8
  %77 = getelementptr inbounds %struct.adfs_dir, %struct.adfs_dir* %76, i32 0, i32 3
  %78 = load %struct.adfs_dir*, %struct.adfs_dir** %9, align 8
  %79 = getelementptr inbounds %struct.adfs_dir, %struct.adfs_dir* %78, i32 0, i32 2
  %80 = load i32*, i32** %79, align 8
  %81 = call i32 @bufoff(i32* %80, i32 2007)
  %82 = call i32 @memcpy(%struct.TYPE_4__* %77, i32 %81, i32 40)
  %83 = load %struct.adfs_dir*, %struct.adfs_dir** %9, align 8
  %84 = getelementptr inbounds %struct.adfs_dir, %struct.adfs_dir* %83, i32 0, i32 4
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.adfs_dir*, %struct.adfs_dir** %9, align 8
  %88 = getelementptr inbounds %struct.adfs_dir, %struct.adfs_dir* %87, i32 0, i32 3
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %86, %91
  br i1 %92, label %103, label %93

93:                                               ; preds = %68
  %94 = load %struct.adfs_dir*, %struct.adfs_dir** %9, align 8
  %95 = getelementptr inbounds %struct.adfs_dir, %struct.adfs_dir* %94, i32 0, i32 4
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 2
  %97 = load %struct.adfs_dir*, %struct.adfs_dir** %9, align 8
  %98 = getelementptr inbounds %struct.adfs_dir, %struct.adfs_dir* %97, i32 0, i32 3
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 1
  %101 = call i64 @memcmp(i32* %96, i8* %100, i32 4)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %93, %68
  br label %131

104:                                              ; preds = %93
  %105 = load %struct.adfs_dir*, %struct.adfs_dir** %9, align 8
  %106 = getelementptr inbounds %struct.adfs_dir, %struct.adfs_dir* %105, i32 0, i32 4
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 2
  %108 = call i64 @memcmp(i32* %107, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %117

110:                                              ; preds = %104
  %111 = load %struct.adfs_dir*, %struct.adfs_dir** %9, align 8
  %112 = getelementptr inbounds %struct.adfs_dir, %struct.adfs_dir* %111, i32 0, i32 4
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 2
  %114 = call i64 @memcmp(i32* %113, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 4)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %110
  br label %131

117:                                              ; preds = %110, %104
  %118 = load %struct.adfs_dir*, %struct.adfs_dir** %9, align 8
  %119 = call i64 @adfs_dir_checkbyte(%struct.adfs_dir* %118)
  %120 = load %struct.adfs_dir*, %struct.adfs_dir** %9, align 8
  %121 = getelementptr inbounds %struct.adfs_dir, %struct.adfs_dir* %120, i32 0, i32 3
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 2
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %119, %124
  br i1 %125, label %126, label %127

126:                                              ; preds = %117
  br label %131

127:                                              ; preds = %117
  %128 = load i32, i32* %11, align 4
  %129 = load %struct.adfs_dir*, %struct.adfs_dir** %9, align 8
  %130 = getelementptr inbounds %struct.adfs_dir, %struct.adfs_dir* %129, i32 0, i32 0
  store i32 %128, i32* %130, align 8
  store i32 0, i32* %5, align 4
  br label %158

131:                                              ; preds = %126, %116, %103, %19
  %132 = load %struct.super_block*, %struct.super_block** %6, align 8
  %133 = load i32, i32* %7, align 4
  %134 = call i32 (%struct.super_block*, i8*, i32, ...) @adfs_error(%struct.super_block* %132, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %133)
  br label %135

135:                                              ; preds = %131, %63, %40
  %136 = load i32, i32* %11, align 4
  %137 = sub nsw i32 %136, 1
  store i32 %137, i32* %11, align 4
  br label %138

138:                                              ; preds = %150, %135
  %139 = load i32, i32* %11, align 4
  %140 = icmp sge i32 %139, 0
  br i1 %140, label %141, label %153

141:                                              ; preds = %138
  %142 = load %struct.adfs_dir*, %struct.adfs_dir** %9, align 8
  %143 = getelementptr inbounds %struct.adfs_dir, %struct.adfs_dir* %142, i32 0, i32 2
  %144 = load i32*, i32** %143, align 8
  %145 = load i32, i32* %11, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %144, i64 %146
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @brelse(i32 %148)
  br label %150

150:                                              ; preds = %141
  %151 = load i32, i32* %11, align 4
  %152 = sub nsw i32 %151, 1
  store i32 %152, i32* %11, align 4
  br label %138

153:                                              ; preds = %138
  %154 = load %struct.adfs_dir*, %struct.adfs_dir** %9, align 8
  %155 = getelementptr inbounds %struct.adfs_dir, %struct.adfs_dir* %154, i32 0, i32 1
  store %struct.super_block* null, %struct.super_block** %155, align 8
  %156 = load i32, i32* @EIO, align 4
  %157 = sub nsw i32 0, %156
  store i32 %157, i32* %5, align 4
  br label %158

158:                                              ; preds = %153, %127
  %159 = load i32, i32* %5, align 4
  ret i32 %159
}

declare dso_local i32 @__adfs_block_map(%struct.super_block*, i32, i32) #1

declare dso_local i32 @adfs_error(%struct.super_block*, i8*, i32, ...) #1

declare dso_local i32 @sb_bread(%struct.super_block*, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @bufoff(i32*, i32) #1

declare dso_local i64 @memcmp(i32*, i8*, i32) #1

declare dso_local i64 @adfs_dir_checkbyte(%struct.adfs_dir*) #1

declare dso_local i32 @brelse(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

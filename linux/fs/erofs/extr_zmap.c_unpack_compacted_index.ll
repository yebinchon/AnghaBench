; ModuleID = '/home/carl/AnghaBench/linux/fs/erofs/extr_zmap.c_unpack_compacted_index.c'
source_filename = "/home/carl/AnghaBench/linux/fs/erofs/extr_zmap.c_unpack_compacted_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.z_erofs_maprecorder = type { i32, i32*, i64, i64, i64*, i32 }
%struct.erofs_inode = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@Z_EROFS_VLE_CLUSTER_TYPE_NONHEAD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.z_erofs_maprecorder*, i32, i32)* @unpack_compacted_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unpack_compacted_index(%struct.z_erofs_maprecorder* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.z_erofs_maprecorder*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.erofs_inode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64*, align 8
  %18 = alloca i64, align 8
  store %struct.z_erofs_maprecorder* %0, %struct.z_erofs_maprecorder** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %19 = load %struct.z_erofs_maprecorder*, %struct.z_erofs_maprecorder** %5, align 8
  %20 = getelementptr inbounds %struct.z_erofs_maprecorder, %struct.z_erofs_maprecorder* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 8
  %22 = call %struct.erofs_inode* @EROFS_I(i32 %21)
  store %struct.erofs_inode* %22, %struct.erofs_inode** %8, align 8
  %23 = load %struct.erofs_inode*, %struct.erofs_inode** %8, align 8
  %24 = getelementptr inbounds %struct.erofs_inode, %struct.erofs_inode* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = shl i32 1, %26
  %28 = sub nsw i32 %27, 1
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %6, align 4
  %30 = shl i32 1, %29
  %31 = icmp eq i32 %30, 4
  br i1 %31, label %32, label %33

32:                                               ; preds = %3
  store i32 2, i32* %11, align 4
  br label %45

33:                                               ; preds = %3
  %34 = load i32, i32* %6, align 4
  %35 = shl i32 1, %34
  %36 = icmp eq i32 %35, 2
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = load i32, i32* %9, align 4
  %39 = icmp eq i32 %38, 12
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  store i32 16, i32* %11, align 4
  br label %44

41:                                               ; preds = %37, %33
  %42 = load i32, i32* @EOPNOTSUPP, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  br label %172

44:                                               ; preds = %40
  br label %45

45:                                               ; preds = %44, %32
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* %6, align 4
  %48 = shl i32 %46, %47
  %49 = zext i32 %48 to i64
  %50 = sub i64 %49, 4
  %51 = mul i64 %50, 8
  %52 = load i32, i32* %11, align 4
  %53 = zext i32 %52 to i64
  %54 = udiv i64 %51, %53
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %14, align 4
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* %6, align 4
  %59 = shl i32 %57, %58
  %60 = call i32 @round_down(i32 %56, i32 %59)
  store i32 %60, i32* %12, align 4
  %61 = load %struct.z_erofs_maprecorder*, %struct.z_erofs_maprecorder** %5, align 8
  %62 = getelementptr inbounds %struct.z_erofs_maprecorder, %struct.z_erofs_maprecorder* %61, i32 0, i32 4
  %63 = load i64*, i64** %62, align 8
  %64 = load i32, i32* %12, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds i64, i64* %63, i64 %65
  store i64* %66, i64** %17, align 8
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* %12, align 4
  %69 = sub i32 %67, %68
  %70 = load i32, i32* %6, align 4
  %71 = lshr i32 %69, %70
  store i32 %71, i32* %16, align 4
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* %10, align 4
  %74 = load i64*, i64** %17, align 8
  %75 = load i32, i32* %14, align 4
  %76 = load i32, i32* %16, align 4
  %77 = mul i32 %75, %76
  %78 = call i32 @decode_compactedbits(i32 %72, i32 %73, i64* %74, i32 %77, i64* %18)
  store i32 %78, i32* %13, align 4
  %79 = load i64, i64* %18, align 8
  %80 = load %struct.z_erofs_maprecorder*, %struct.z_erofs_maprecorder** %5, align 8
  %81 = getelementptr inbounds %struct.z_erofs_maprecorder, %struct.z_erofs_maprecorder* %80, i32 0, i32 3
  store i64 %79, i64* %81, align 8
  %82 = load i64, i64* %18, align 8
  %83 = load i64, i64* @Z_EROFS_VLE_CLUSTER_TYPE_NONHEAD, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %120

85:                                               ; preds = %45
  %86 = load i32, i32* %9, align 4
  %87 = shl i32 1, %86
  %88 = load %struct.z_erofs_maprecorder*, %struct.z_erofs_maprecorder** %5, align 8
  %89 = getelementptr inbounds %struct.z_erofs_maprecorder, %struct.z_erofs_maprecorder* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 8
  %90 = load i32, i32* %16, align 4
  %91 = add nsw i32 %90, 1
  %92 = load i32, i32* %11, align 4
  %93 = icmp ne i32 %91, %92
  br i1 %93, label %94, label %100

94:                                               ; preds = %85
  %95 = load i32, i32* %13, align 4
  %96 = load %struct.z_erofs_maprecorder*, %struct.z_erofs_maprecorder** %5, align 8
  %97 = getelementptr inbounds %struct.z_erofs_maprecorder, %struct.z_erofs_maprecorder* %96, i32 0, i32 1
  %98 = load i32*, i32** %97, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 0
  store i32 %95, i32* %99, align 4
  store i32 0, i32* %4, align 4
  br label %172

100:                                              ; preds = %85
  %101 = load i32, i32* %9, align 4
  %102 = load i32, i32* %10, align 4
  %103 = load i64*, i64** %17, align 8
  %104 = load i32, i32* %14, align 4
  %105 = load i32, i32* %16, align 4
  %106 = sub nsw i32 %105, 1
  %107 = mul i32 %104, %106
  %108 = call i32 @decode_compactedbits(i32 %101, i32 %102, i64* %103, i32 %107, i64* %18)
  store i32 %108, i32* %13, align 4
  %109 = load i64, i64* %18, align 8
  %110 = load i64, i64* @Z_EROFS_VLE_CLUSTER_TYPE_NONHEAD, align 8
  %111 = icmp ne i64 %109, %110
  br i1 %111, label %112, label %113

112:                                              ; preds = %100
  store i32 0, i32* %13, align 4
  br label %113

113:                                              ; preds = %112, %100
  %114 = load i32, i32* %13, align 4
  %115 = add i32 %114, 1
  %116 = load %struct.z_erofs_maprecorder*, %struct.z_erofs_maprecorder** %5, align 8
  %117 = getelementptr inbounds %struct.z_erofs_maprecorder, %struct.z_erofs_maprecorder* %116, i32 0, i32 1
  %118 = load i32*, i32** %117, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 0
  store i32 %115, i32* %119, align 4
  store i32 0, i32* %4, align 4
  br label %172

120:                                              ; preds = %45
  %121 = load i32, i32* %13, align 4
  %122 = load %struct.z_erofs_maprecorder*, %struct.z_erofs_maprecorder** %5, align 8
  %123 = getelementptr inbounds %struct.z_erofs_maprecorder, %struct.z_erofs_maprecorder* %122, i32 0, i32 0
  store i32 %121, i32* %123, align 8
  %124 = load %struct.z_erofs_maprecorder*, %struct.z_erofs_maprecorder** %5, align 8
  %125 = getelementptr inbounds %struct.z_erofs_maprecorder, %struct.z_erofs_maprecorder* %124, i32 0, i32 1
  %126 = load i32*, i32** %125, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 0
  store i32 0, i32* %127, align 4
  store i32 1, i32* %15, align 4
  br label %128

128:                                              ; preds = %154, %120
  %129 = load i32, i32* %16, align 4
  %130 = icmp sgt i32 %129, 0
  br i1 %130, label %131, label %155

131:                                              ; preds = %128
  %132 = load i32, i32* %16, align 4
  %133 = add nsw i32 %132, -1
  store i32 %133, i32* %16, align 4
  %134 = load i32, i32* %9, align 4
  %135 = load i32, i32* %10, align 4
  %136 = load i64*, i64** %17, align 8
  %137 = load i32, i32* %14, align 4
  %138 = load i32, i32* %16, align 4
  %139 = mul i32 %137, %138
  %140 = call i32 @decode_compactedbits(i32 %134, i32 %135, i64* %136, i32 %139, i64* %18)
  store i32 %140, i32* %13, align 4
  %141 = load i64, i64* %18, align 8
  %142 = load i64, i64* @Z_EROFS_VLE_CLUSTER_TYPE_NONHEAD, align 8
  %143 = icmp eq i64 %141, %142
  br i1 %143, label %144, label %148

144:                                              ; preds = %131
  %145 = load i32, i32* %13, align 4
  %146 = load i32, i32* %16, align 4
  %147 = sub i32 %146, %145
  store i32 %147, i32* %16, align 4
  br label %148

148:                                              ; preds = %144, %131
  %149 = load i32, i32* %16, align 4
  %150 = icmp sge i32 %149, 0
  br i1 %150, label %151, label %154

151:                                              ; preds = %148
  %152 = load i32, i32* %15, align 4
  %153 = add i32 %152, 1
  store i32 %153, i32* %15, align 4
  br label %154

154:                                              ; preds = %151, %148
  br label %128

155:                                              ; preds = %128
  %156 = load i32, i32* %11, align 4
  %157 = load i32, i32* %6, align 4
  %158 = shl i32 %156, %157
  %159 = zext i32 %158 to i64
  %160 = sub i64 %159, 4
  %161 = load i64*, i64** %17, align 8
  %162 = getelementptr inbounds i64, i64* %161, i64 %160
  store i64* %162, i64** %17, align 8
  %163 = load i64*, i64** %17, align 8
  %164 = bitcast i64* %163 to i32*
  %165 = load i32, i32* %164, align 4
  %166 = call i64 @le32_to_cpu(i32 %165)
  %167 = load i32, i32* %15, align 4
  %168 = zext i32 %167 to i64
  %169 = add nsw i64 %166, %168
  %170 = load %struct.z_erofs_maprecorder*, %struct.z_erofs_maprecorder** %5, align 8
  %171 = getelementptr inbounds %struct.z_erofs_maprecorder, %struct.z_erofs_maprecorder* %170, i32 0, i32 2
  store i64 %169, i64* %171, align 8
  store i32 0, i32* %4, align 4
  br label %172

172:                                              ; preds = %155, %113, %94, %41
  %173 = load i32, i32* %4, align 4
  ret i32 %173
}

declare dso_local %struct.erofs_inode* @EROFS_I(i32) #1

declare dso_local i32 @round_down(i32, i32) #1

declare dso_local i32 @decode_compactedbits(i32, i32, i64*, i32, i64*) #1

declare dso_local i64 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_core.c_exfat_alloc_cluster.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_core.c_exfat_alloc_cluster.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.chain_t = type { i32, i32, i32 }
%struct.fs_info_t = type { i32, i32, i64 }
%struct.TYPE_2__ = type { %struct.fs_info_t }

@FFS_SUCCESS = common dso_local global i64 0, align 8
@UINT_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @exfat_alloc_cluster(%struct.super_block* %0, i32 %1, %struct.chain_t* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.chain_t*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.fs_info_t*, align 8
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.chain_t* %2, %struct.chain_t** %7, align 8
  store i32 0, i32* %8, align 4
  %13 = call i32 @CLUSTER_32(i32 -1)
  store i32 %13, i32* %11, align 4
  %14 = load %struct.super_block*, %struct.super_block** %5, align 8
  %15 = call %struct.TYPE_2__* @EXFAT_SB(%struct.super_block* %14)
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store %struct.fs_info_t* %16, %struct.fs_info_t** %12, align 8
  %17 = load %struct.chain_t*, %struct.chain_t** %7, align 8
  %18 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = call i32 @CLUSTER_32(i32 -1)
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %35

23:                                               ; preds = %3
  %24 = load %struct.super_block*, %struct.super_block** %5, align 8
  %25 = load %struct.fs_info_t*, %struct.fs_info_t** %12, align 8
  %26 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = sub nsw i32 %27, 2
  %29 = call i32 @test_alloc_bitmap(%struct.super_block* %24, i32 %28)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @CLUSTER_32(i32 -1)
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %23
  store i32 0, i32* %4, align 4
  br label %199

34:                                               ; preds = %23
  br label %45

35:                                               ; preds = %3
  %36 = load i32, i32* %9, align 4
  %37 = load %struct.fs_info_t*, %struct.fs_info_t** %12, align 8
  %38 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp sge i32 %36, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %35
  store i32 2, i32* %9, align 4
  %42 = load %struct.chain_t*, %struct.chain_t** %7, align 8
  %43 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %42, i32 0, i32 1
  store i32 1, i32* %43, align 4
  br label %44

44:                                               ; preds = %41, %35
  br label %45

45:                                               ; preds = %44, %34
  %46 = load %struct.super_block*, %struct.super_block** %5, align 8
  %47 = call i32 @__set_sb_dirty(%struct.super_block* %46)
  %48 = call i32 @CLUSTER_32(i32 -1)
  %49 = load %struct.chain_t*, %struct.chain_t** %7, align 8
  %50 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  br label %51

51:                                               ; preds = %175, %45
  %52 = load %struct.super_block*, %struct.super_block** %5, align 8
  %53 = load i32, i32* %9, align 4
  %54 = sub nsw i32 %53, 2
  %55 = call i32 @test_alloc_bitmap(%struct.super_block* %52, i32 %54)
  store i32 %55, i32* %10, align 4
  %56 = call i32 @CLUSTER_32(i32 -1)
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %176

58:                                               ; preds = %51
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* %9, align 4
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %62, label %77

62:                                               ; preds = %58
  %63 = load %struct.chain_t*, %struct.chain_t** %7, align 8
  %64 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = icmp eq i32 %65, 3
  br i1 %66, label %67, label %76

67:                                               ; preds = %62
  %68 = load %struct.super_block*, %struct.super_block** %5, align 8
  %69 = load %struct.chain_t*, %struct.chain_t** %7, align 8
  %70 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %8, align 4
  %73 = call i32 @exfat_chain_cont_cluster(%struct.super_block* %68, i32 %71, i32 %72)
  %74 = load %struct.chain_t*, %struct.chain_t** %7, align 8
  %75 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %74, i32 0, i32 1
  store i32 1, i32* %75, align 4
  br label %76

76:                                               ; preds = %67, %62
  br label %77

77:                                               ; preds = %76, %58
  %78 = load %struct.super_block*, %struct.super_block** %5, align 8
  %79 = load i32, i32* %10, align 4
  %80 = sub nsw i32 %79, 2
  %81 = call i64 @set_alloc_bitmap(%struct.super_block* %78, i32 %80)
  %82 = load i64, i64* @FFS_SUCCESS, align 8
  %83 = icmp ne i64 %81, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %77
  store i32 -1, i32* %4, align 4
  br label %199

85:                                               ; preds = %77
  %86 = load i32, i32* %8, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %8, align 4
  %88 = load %struct.chain_t*, %struct.chain_t** %7, align 8
  %89 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = icmp eq i32 %90, 1
  br i1 %91, label %92, label %100

92:                                               ; preds = %85
  %93 = load %struct.super_block*, %struct.super_block** %5, align 8
  %94 = load i32, i32* %10, align 4
  %95 = call i32 @CLUSTER_32(i32 -1)
  %96 = call i64 @FAT_write(%struct.super_block* %93, i32 %94, i32 %95)
  %97 = icmp slt i64 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %92
  store i32 -1, i32* %4, align 4
  br label %199

99:                                               ; preds = %92
  br label %100

100:                                              ; preds = %99, %85
  %101 = load %struct.chain_t*, %struct.chain_t** %7, align 8
  %102 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @CLUSTER_32(i32 -1)
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %106, label %110

106:                                              ; preds = %100
  %107 = load i32, i32* %10, align 4
  %108 = load %struct.chain_t*, %struct.chain_t** %7, align 8
  %109 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %108, i32 0, i32 0
  store i32 %107, i32* %109, align 4
  br label %124

110:                                              ; preds = %100
  %111 = load %struct.chain_t*, %struct.chain_t** %7, align 8
  %112 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = icmp eq i32 %113, 1
  br i1 %114, label %115, label %123

115:                                              ; preds = %110
  %116 = load %struct.super_block*, %struct.super_block** %5, align 8
  %117 = load i32, i32* %11, align 4
  %118 = load i32, i32* %10, align 4
  %119 = call i64 @FAT_write(%struct.super_block* %116, i32 %117, i32 %118)
  %120 = icmp slt i64 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %115
  store i32 -1, i32* %4, align 4
  br label %199

122:                                              ; preds = %115
  br label %123

123:                                              ; preds = %122, %110
  br label %124

124:                                              ; preds = %123, %106
  %125 = load i32, i32* %10, align 4
  store i32 %125, i32* %11, align 4
  %126 = load i32, i32* %6, align 4
  %127 = add nsw i32 %126, -1
  store i32 %127, i32* %6, align 4
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %152

129:                                              ; preds = %124
  %130 = load i32, i32* %9, align 4
  %131 = load %struct.fs_info_t*, %struct.fs_info_t** %12, align 8
  %132 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %131, i32 0, i32 0
  store i32 %130, i32* %132, align 8
  %133 = load %struct.fs_info_t*, %struct.fs_info_t** %12, align 8
  %134 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %133, i32 0, i32 2
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @UINT_MAX, align 8
  %137 = icmp ne i64 %135, %136
  br i1 %137, label %138, label %145

138:                                              ; preds = %129
  %139 = load i32, i32* %8, align 4
  %140 = sext i32 %139 to i64
  %141 = load %struct.fs_info_t*, %struct.fs_info_t** %12, align 8
  %142 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %141, i32 0, i32 2
  %143 = load i64, i64* %142, align 8
  %144 = add nsw i64 %143, %140
  store i64 %144, i64* %142, align 8
  br label %145

145:                                              ; preds = %138, %129
  %146 = load i32, i32* %8, align 4
  %147 = load %struct.chain_t*, %struct.chain_t** %7, align 8
  %148 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 4
  %150 = add nsw i32 %149, %146
  store i32 %150, i32* %148, align 4
  %151 = load i32, i32* %8, align 4
  store i32 %151, i32* %4, align 4
  br label %199

152:                                              ; preds = %124
  %153 = load i32, i32* %10, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %9, align 4
  %155 = load i32, i32* %9, align 4
  %156 = load %struct.fs_info_t*, %struct.fs_info_t** %12, align 8
  %157 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = icmp sge i32 %155, %158
  br i1 %159, label %160, label %175

160:                                              ; preds = %152
  store i32 2, i32* %9, align 4
  %161 = load %struct.chain_t*, %struct.chain_t** %7, align 8
  %162 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = icmp eq i32 %163, 3
  br i1 %164, label %165, label %174

165:                                              ; preds = %160
  %166 = load %struct.super_block*, %struct.super_block** %5, align 8
  %167 = load %struct.chain_t*, %struct.chain_t** %7, align 8
  %168 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* %8, align 4
  %171 = call i32 @exfat_chain_cont_cluster(%struct.super_block* %166, i32 %169, i32 %170)
  %172 = load %struct.chain_t*, %struct.chain_t** %7, align 8
  %173 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %172, i32 0, i32 1
  store i32 1, i32* %173, align 4
  br label %174

174:                                              ; preds = %165, %160
  br label %175

175:                                              ; preds = %174, %152
  br label %51

176:                                              ; preds = %51
  %177 = load i32, i32* %9, align 4
  %178 = load %struct.fs_info_t*, %struct.fs_info_t** %12, align 8
  %179 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %178, i32 0, i32 0
  store i32 %177, i32* %179, align 8
  %180 = load %struct.fs_info_t*, %struct.fs_info_t** %12, align 8
  %181 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %180, i32 0, i32 2
  %182 = load i64, i64* %181, align 8
  %183 = load i64, i64* @UINT_MAX, align 8
  %184 = icmp ne i64 %182, %183
  br i1 %184, label %185, label %192

185:                                              ; preds = %176
  %186 = load i32, i32* %8, align 4
  %187 = sext i32 %186 to i64
  %188 = load %struct.fs_info_t*, %struct.fs_info_t** %12, align 8
  %189 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %188, i32 0, i32 2
  %190 = load i64, i64* %189, align 8
  %191 = add nsw i64 %190, %187
  store i64 %191, i64* %189, align 8
  br label %192

192:                                              ; preds = %185, %176
  %193 = load i32, i32* %8, align 4
  %194 = load %struct.chain_t*, %struct.chain_t** %7, align 8
  %195 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %194, i32 0, i32 2
  %196 = load i32, i32* %195, align 4
  %197 = add nsw i32 %196, %193
  store i32 %197, i32* %195, align 4
  %198 = load i32, i32* %8, align 4
  store i32 %198, i32* %4, align 4
  br label %199

199:                                              ; preds = %192, %145, %121, %98, %84, %33
  %200 = load i32, i32* %4, align 4
  ret i32 %200
}

declare dso_local i32 @CLUSTER_32(i32) #1

declare dso_local %struct.TYPE_2__* @EXFAT_SB(%struct.super_block*) #1

declare dso_local i32 @test_alloc_bitmap(%struct.super_block*, i32) #1

declare dso_local i32 @__set_sb_dirty(%struct.super_block*) #1

declare dso_local i32 @exfat_chain_cont_cluster(%struct.super_block*, i32, i32) #1

declare dso_local i64 @set_alloc_bitmap(%struct.super_block*, i32) #1

declare dso_local i64 @FAT_write(%struct.super_block*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/fs/coda/extr_upcall.c_coda_downcall.c'
source_filename = "/home/carl/AnghaBench/linux/fs/coda/extr_upcall.c_coda_downcall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.venus_comm = type { i32, %struct.super_block* }
%struct.super_block = type { i32 }
%union.outputArgs = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.CodaFid, %struct.CodaFid }
%struct.CodaFid = type { i32 }
%struct.inode = type { i32 }
%struct.TYPE_5__ = type { %struct.CodaFid }
%struct.TYPE_6__ = type { %struct.CodaFid }
%struct.TYPE_7__ = type { %struct.CodaFid }

@EINVAL = common dso_local global i32 0, align 4
@C_FLUSH = common dso_local global i32 0, align 4
@C_PURGE = common dso_local global i32 0, align 4
@C_VATTR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @coda_downcall(%struct.venus_comm* %0, i32 %1, %union.outputArgs* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.venus_comm*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %union.outputArgs*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.CodaFid*, align 8
  %12 = alloca %struct.CodaFid*, align 8
  %13 = alloca %struct.super_block*, align 8
  store %struct.venus_comm* %0, %struct.venus_comm** %6, align 8
  store i32 %1, i32* %7, align 4
  store %union.outputArgs* %2, %union.outputArgs** %8, align 8
  store i64 %3, i64* %9, align 8
  store %struct.inode* null, %struct.inode** %10, align 8
  store %struct.CodaFid* null, %struct.CodaFid** %11, align 8
  %14 = load i32, i32* %7, align 4
  switch i32 %14, label %50 [
    i32 131, label %15
    i32 129, label %22
    i32 128, label %29
    i32 132, label %36
    i32 130, label %43
  ]

15:                                               ; preds = %4
  %16 = load i64, i64* %9, align 8
  %17 = icmp ult i64 %16, 4
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %152

21:                                               ; preds = %15
  br label %50

22:                                               ; preds = %4
  %23 = load i64, i64* %9, align 8
  %24 = icmp ult i64 %23, 4
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  br label %152

28:                                               ; preds = %22
  br label %50

29:                                               ; preds = %4
  %30 = load i64, i64* %9, align 8
  %31 = icmp ult i64 %30, 4
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %5, align 4
  br label %152

35:                                               ; preds = %29
  br label %50

36:                                               ; preds = %4
  %37 = load i64, i64* %9, align 8
  %38 = icmp ult i64 %37, 4
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %5, align 4
  br label %152

42:                                               ; preds = %36
  br label %50

43:                                               ; preds = %4
  %44 = load i64, i64* %9, align 8
  %45 = icmp ult i64 %44, 4
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %5, align 4
  br label %152

49:                                               ; preds = %43
  br label %50

50:                                               ; preds = %4, %49, %42, %35, %28, %21
  %51 = load %struct.venus_comm*, %struct.venus_comm** %6, align 8
  %52 = getelementptr inbounds %struct.venus_comm, %struct.venus_comm* %51, i32 0, i32 0
  %53 = call i32 @mutex_lock(i32* %52)
  %54 = load %struct.venus_comm*, %struct.venus_comm** %6, align 8
  %55 = getelementptr inbounds %struct.venus_comm, %struct.venus_comm* %54, i32 0, i32 1
  %56 = load %struct.super_block*, %struct.super_block** %55, align 8
  store %struct.super_block* %56, %struct.super_block** %13, align 8
  %57 = load %struct.super_block*, %struct.super_block** %13, align 8
  %58 = icmp ne %struct.super_block* %57, null
  br i1 %58, label %59, label %64

59:                                               ; preds = %50
  %60 = load %struct.super_block*, %struct.super_block** %13, align 8
  %61 = getelementptr inbounds %struct.super_block, %struct.super_block* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %59, %50
  br label %112

65:                                               ; preds = %59
  %66 = load i32, i32* %7, align 4
  switch i32 %66, label %104 [
    i32 133, label %67
    i32 131, label %85
    i32 129, label %88
    i32 128, label %92
    i32 132, label %96
    i32 130, label %100
  ]

67:                                               ; preds = %65
  %68 = load %struct.super_block*, %struct.super_block** %13, align 8
  %69 = call i32 @coda_cache_clear_all(%struct.super_block* %68)
  %70 = load %struct.super_block*, %struct.super_block** %13, align 8
  %71 = call i32 @shrink_dcache_sb(%struct.super_block* %70)
  %72 = load %struct.super_block*, %struct.super_block** %13, align 8
  %73 = getelementptr inbounds %struct.super_block, %struct.super_block* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @d_really_is_positive(i32 %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %67
  %78 = load %struct.super_block*, %struct.super_block** %13, align 8
  %79 = getelementptr inbounds %struct.super_block, %struct.super_block* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call %struct.inode* @d_inode(i32 %80)
  %82 = load i32, i32* @C_FLUSH, align 4
  %83 = call i32 @coda_flag_inode(%struct.inode* %81, i32 %82)
  br label %84

84:                                               ; preds = %77, %67
  br label %104

85:                                               ; preds = %65
  %86 = load %struct.super_block*, %struct.super_block** %13, align 8
  %87 = call i32 @coda_cache_clear_all(%struct.super_block* %86)
  br label %104

88:                                               ; preds = %65
  %89 = load %union.outputArgs*, %union.outputArgs** %8, align 8
  %90 = bitcast %union.outputArgs* %89 to %struct.TYPE_5__*
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  store %struct.CodaFid* %91, %struct.CodaFid** %11, align 8
  br label %104

92:                                               ; preds = %65
  %93 = load %union.outputArgs*, %union.outputArgs** %8, align 8
  %94 = bitcast %union.outputArgs* %93 to %struct.TYPE_6__*
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  store %struct.CodaFid* %95, %struct.CodaFid** %11, align 8
  br label %104

96:                                               ; preds = %65
  %97 = load %union.outputArgs*, %union.outputArgs** %8, align 8
  %98 = bitcast %union.outputArgs* %97 to %struct.TYPE_7__*
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 0
  store %struct.CodaFid* %99, %struct.CodaFid** %11, align 8
  br label %104

100:                                              ; preds = %65
  %101 = load %union.outputArgs*, %union.outputArgs** %8, align 8
  %102 = bitcast %union.outputArgs* %101 to %struct.TYPE_8__*
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 1
  store %struct.CodaFid* %103, %struct.CodaFid** %11, align 8
  br label %104

104:                                              ; preds = %65, %100, %96, %92, %88, %85, %84
  %105 = load %struct.CodaFid*, %struct.CodaFid** %11, align 8
  %106 = icmp ne %struct.CodaFid* %105, null
  br i1 %106, label %107, label %111

107:                                              ; preds = %104
  %108 = load %struct.CodaFid*, %struct.CodaFid** %11, align 8
  %109 = load %struct.super_block*, %struct.super_block** %13, align 8
  %110 = call %struct.inode* @coda_fid_to_inode(%struct.CodaFid* %108, %struct.super_block* %109)
  store %struct.inode* %110, %struct.inode** %10, align 8
  br label %111

111:                                              ; preds = %107, %104
  br label %112

112:                                              ; preds = %111, %64
  %113 = load %struct.venus_comm*, %struct.venus_comm** %6, align 8
  %114 = getelementptr inbounds %struct.venus_comm, %struct.venus_comm* %113, i32 0, i32 0
  %115 = call i32 @mutex_unlock(i32* %114)
  %116 = load %struct.inode*, %struct.inode** %10, align 8
  %117 = icmp ne %struct.inode* %116, null
  br i1 %117, label %119, label %118

118:                                              ; preds = %112
  store i32 0, i32* %5, align 4
  br label %152

119:                                              ; preds = %112
  %120 = load i32, i32* %7, align 4
  switch i32 %120, label %149 [
    i32 129, label %121
    i32 128, label %128
    i32 132, label %132
    i32 130, label %141
  ]

121:                                              ; preds = %119
  %122 = load %struct.inode*, %struct.inode** %10, align 8
  %123 = load i32, i32* @C_PURGE, align 4
  %124 = call i32 @coda_flag_inode_children(%struct.inode* %122, i32 %123)
  %125 = load %struct.inode*, %struct.inode** %10, align 8
  %126 = load i32, i32* @C_VATTR, align 4
  %127 = call i32 @coda_flag_inode(%struct.inode* %125, i32 %126)
  br label %149

128:                                              ; preds = %119
  %129 = load %struct.inode*, %struct.inode** %10, align 8
  %130 = load i32, i32* @C_VATTR, align 4
  %131 = call i32 @coda_flag_inode(%struct.inode* %129, i32 %130)
  br label %149

132:                                              ; preds = %119
  %133 = load %struct.inode*, %struct.inode** %10, align 8
  %134 = load i32, i32* @C_PURGE, align 4
  %135 = call i32 @coda_flag_inode_children(%struct.inode* %133, i32 %134)
  %136 = load %struct.inode*, %struct.inode** %10, align 8
  %137 = load i32, i32* @C_PURGE, align 4
  %138 = call i32 @coda_flag_inode(%struct.inode* %136, i32 %137)
  %139 = load %struct.inode*, %struct.inode** %10, align 8
  %140 = call i32 @d_prune_aliases(%struct.inode* %139)
  br label %149

141:                                              ; preds = %119
  %142 = load %union.outputArgs*, %union.outputArgs** %8, align 8
  %143 = bitcast %union.outputArgs* %142 to %struct.TYPE_8__*
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 0
  store %struct.CodaFid* %144, %struct.CodaFid** %12, align 8
  %145 = load %struct.inode*, %struct.inode** %10, align 8
  %146 = load %struct.CodaFid*, %struct.CodaFid** %11, align 8
  %147 = load %struct.CodaFid*, %struct.CodaFid** %12, align 8
  %148 = call i32 @coda_replace_fid(%struct.inode* %145, %struct.CodaFid* %146, %struct.CodaFid* %147)
  br label %149

149:                                              ; preds = %119, %141, %132, %128, %121
  %150 = load %struct.inode*, %struct.inode** %10, align 8
  %151 = call i32 @iput(%struct.inode* %150)
  store i32 0, i32* %5, align 4
  br label %152

152:                                              ; preds = %149, %118, %46, %39, %32, %25, %18
  %153 = load i32, i32* %5, align 4
  ret i32 %153
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @coda_cache_clear_all(%struct.super_block*) #1

declare dso_local i32 @shrink_dcache_sb(%struct.super_block*) #1

declare dso_local i32 @d_really_is_positive(i32) #1

declare dso_local i32 @coda_flag_inode(%struct.inode*, i32) #1

declare dso_local %struct.inode* @d_inode(i32) #1

declare dso_local %struct.inode* @coda_fid_to_inode(%struct.CodaFid*, %struct.super_block*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @coda_flag_inode_children(%struct.inode*, i32) #1

declare dso_local i32 @d_prune_aliases(%struct.inode*) #1

declare dso_local i32 @coda_replace_fid(%struct.inode*, %struct.CodaFid*, %struct.CodaFid*) #1

declare dso_local i32 @iput(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

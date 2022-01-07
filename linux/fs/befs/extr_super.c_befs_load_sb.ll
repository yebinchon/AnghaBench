; ModuleID = '/home/carl/AnghaBench/linux/fs/befs/extr_super.c_befs_load_sb.c'
source_filename = "/home/carl/AnghaBench/linux/fs/befs/extr_super.c_befs_load_sb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.TYPE_3__ = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.befs_sb_info = type { i32*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32 }

@BEFS_BYTEORDER_NATIVE_LE = common dso_local global i64 0, align 8
@BEFS_BYTESEX_LE = common dso_local global i32 0, align 4
@BEFS_BYTEORDER_NATIVE_BE = common dso_local global i64 0, align 8
@BEFS_BYTESEX_BE = common dso_local global i32 0, align 4
@BEFS_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @befs_load_sb(%struct.super_block* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca %struct.befs_sb_info*, align 8
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %6 = load %struct.super_block*, %struct.super_block** %3, align 8
  %7 = call %struct.befs_sb_info* @BEFS_SB(%struct.super_block* %6)
  store %struct.befs_sb_info* %7, %struct.befs_sb_info** %5, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @BEFS_BYTEORDER_NATIVE_LE, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load i32, i32* @BEFS_BYTESEX_LE, align 4
  %15 = load %struct.befs_sb_info*, %struct.befs_sb_info** %5, align 8
  %16 = getelementptr inbounds %struct.befs_sb_info, %struct.befs_sb_info* %15, i32 0, i32 18
  store i32 %14, i32* %16, align 8
  br label %28

17:                                               ; preds = %2
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @BEFS_BYTEORDER_NATIVE_BE, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %17
  %24 = load i32, i32* @BEFS_BYTESEX_BE, align 4
  %25 = load %struct.befs_sb_info*, %struct.befs_sb_info** %5, align 8
  %26 = getelementptr inbounds %struct.befs_sb_info, %struct.befs_sb_info* %25, i32 0, i32 18
  store i32 %24, i32* %26, align 8
  br label %27

27:                                               ; preds = %23, %17
  br label %28

28:                                               ; preds = %27, %13
  %29 = load %struct.super_block*, %struct.super_block** %3, align 8
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 17
  %32 = load i32, i32* %31, align 8
  %33 = call i8* @fs32_to_cpu(%struct.super_block* %29, i32 %32)
  %34 = load %struct.befs_sb_info*, %struct.befs_sb_info** %5, align 8
  %35 = getelementptr inbounds %struct.befs_sb_info, %struct.befs_sb_info* %34, i32 0, i32 17
  store i8* %33, i8** %35, align 8
  %36 = load %struct.super_block*, %struct.super_block** %3, align 8
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 16
  %39 = load i32, i32* %38, align 4
  %40 = call i8* @fs32_to_cpu(%struct.super_block* %36, i32 %39)
  %41 = load %struct.befs_sb_info*, %struct.befs_sb_info** %5, align 8
  %42 = getelementptr inbounds %struct.befs_sb_info, %struct.befs_sb_info* %41, i32 0, i32 16
  store i8* %40, i8** %42, align 8
  %43 = load %struct.super_block*, %struct.super_block** %3, align 8
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 15
  %46 = load i32, i32* %45, align 8
  %47 = call i8* @fs32_to_cpu(%struct.super_block* %43, i32 %46)
  %48 = load %struct.befs_sb_info*, %struct.befs_sb_info** %5, align 8
  %49 = getelementptr inbounds %struct.befs_sb_info, %struct.befs_sb_info* %48, i32 0, i32 15
  store i8* %47, i8** %49, align 8
  %50 = load %struct.super_block*, %struct.super_block** %3, align 8
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 14
  %53 = load i32, i32* %52, align 4
  %54 = call i8* @fs32_to_cpu(%struct.super_block* %50, i32 %53)
  %55 = load %struct.befs_sb_info*, %struct.befs_sb_info** %5, align 8
  %56 = getelementptr inbounds %struct.befs_sb_info, %struct.befs_sb_info* %55, i32 0, i32 14
  store i8* %54, i8** %56, align 8
  %57 = load %struct.super_block*, %struct.super_block** %3, align 8
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 13
  %60 = load i32, i32* %59, align 8
  %61 = call i8* @fs32_to_cpu(%struct.super_block* %57, i32 %60)
  %62 = load %struct.befs_sb_info*, %struct.befs_sb_info** %5, align 8
  %63 = getelementptr inbounds %struct.befs_sb_info, %struct.befs_sb_info* %62, i32 0, i32 13
  store i8* %61, i8** %63, align 8
  %64 = load %struct.super_block*, %struct.super_block** %3, align 8
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 12
  %67 = load i32, i32* %66, align 4
  %68 = call i8* @fs64_to_cpu(%struct.super_block* %64, i32 %67)
  %69 = load %struct.befs_sb_info*, %struct.befs_sb_info** %5, align 8
  %70 = getelementptr inbounds %struct.befs_sb_info, %struct.befs_sb_info* %69, i32 0, i32 12
  store i8* %68, i8** %70, align 8
  %71 = load %struct.super_block*, %struct.super_block** %3, align 8
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 11
  %74 = load i32, i32* %73, align 8
  %75 = call i8* @fs64_to_cpu(%struct.super_block* %71, i32 %74)
  %76 = load %struct.befs_sb_info*, %struct.befs_sb_info** %5, align 8
  %77 = getelementptr inbounds %struct.befs_sb_info, %struct.befs_sb_info* %76, i32 0, i32 11
  store i8* %75, i8** %77, align 8
  %78 = load %struct.super_block*, %struct.super_block** %3, align 8
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 10
  %81 = load i32, i32* %80, align 4
  %82 = call i8* @fs32_to_cpu(%struct.super_block* %78, i32 %81)
  %83 = load %struct.befs_sb_info*, %struct.befs_sb_info** %5, align 8
  %84 = getelementptr inbounds %struct.befs_sb_info, %struct.befs_sb_info* %83, i32 0, i32 10
  store i8* %82, i8** %84, align 8
  %85 = load %struct.super_block*, %struct.super_block** %3, align 8
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 9
  %88 = load i32, i32* %87, align 8
  %89 = call i8* @fs32_to_cpu(%struct.super_block* %85, i32 %88)
  %90 = load %struct.befs_sb_info*, %struct.befs_sb_info** %5, align 8
  %91 = getelementptr inbounds %struct.befs_sb_info, %struct.befs_sb_info* %90, i32 0, i32 9
  store i8* %89, i8** %91, align 8
  %92 = load %struct.super_block*, %struct.super_block** %3, align 8
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 8
  %95 = load i32, i32* %94, align 4
  %96 = call i8* @fs32_to_cpu(%struct.super_block* %92, i32 %95)
  %97 = load %struct.befs_sb_info*, %struct.befs_sb_info** %5, align 8
  %98 = getelementptr inbounds %struct.befs_sb_info, %struct.befs_sb_info* %97, i32 0, i32 8
  store i8* %96, i8** %98, align 8
  %99 = load %struct.super_block*, %struct.super_block** %3, align 8
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 7
  %102 = load i32, i32* %101, align 8
  %103 = call i8* @fs32_to_cpu(%struct.super_block* %99, i32 %102)
  %104 = load %struct.befs_sb_info*, %struct.befs_sb_info** %5, align 8
  %105 = getelementptr inbounds %struct.befs_sb_info, %struct.befs_sb_info* %104, i32 0, i32 7
  store i8* %103, i8** %105, align 8
  %106 = load %struct.super_block*, %struct.super_block** %3, align 8
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 6
  %109 = load i32, i32* %108, align 4
  %110 = call i8* @fs32_to_cpu(%struct.super_block* %106, i32 %109)
  %111 = load %struct.befs_sb_info*, %struct.befs_sb_info** %5, align 8
  %112 = getelementptr inbounds %struct.befs_sb_info, %struct.befs_sb_info* %111, i32 0, i32 6
  store i8* %110, i8** %112, align 8
  %113 = load %struct.super_block*, %struct.super_block** %3, align 8
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 5
  %116 = load i32, i32* %115, align 8
  %117 = call i8* @fsrun_to_cpu(%struct.super_block* %113, i32 %116)
  %118 = load %struct.befs_sb_info*, %struct.befs_sb_info** %5, align 8
  %119 = getelementptr inbounds %struct.befs_sb_info, %struct.befs_sb_info* %118, i32 0, i32 5
  store i8* %117, i8** %119, align 8
  %120 = load %struct.super_block*, %struct.super_block** %3, align 8
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 4
  %123 = load i32, i32* %122, align 4
  %124 = call i8* @fs64_to_cpu(%struct.super_block* %120, i32 %123)
  %125 = load %struct.befs_sb_info*, %struct.befs_sb_info** %5, align 8
  %126 = getelementptr inbounds %struct.befs_sb_info, %struct.befs_sb_info* %125, i32 0, i32 4
  store i8* %124, i8** %126, align 8
  %127 = load %struct.super_block*, %struct.super_block** %3, align 8
  %128 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 8
  %131 = call i8* @fs64_to_cpu(%struct.super_block* %127, i32 %130)
  %132 = load %struct.befs_sb_info*, %struct.befs_sb_info** %5, align 8
  %133 = getelementptr inbounds %struct.befs_sb_info, %struct.befs_sb_info* %132, i32 0, i32 3
  store i8* %131, i8** %133, align 8
  %134 = load %struct.super_block*, %struct.super_block** %3, align 8
  %135 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 4
  %138 = call i8* @fsrun_to_cpu(%struct.super_block* %134, i32 %137)
  %139 = load %struct.befs_sb_info*, %struct.befs_sb_info** %5, align 8
  %140 = getelementptr inbounds %struct.befs_sb_info, %struct.befs_sb_info* %139, i32 0, i32 2
  store i8* %138, i8** %140, align 8
  %141 = load %struct.super_block*, %struct.super_block** %3, align 8
  %142 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 8
  %145 = call i8* @fsrun_to_cpu(%struct.super_block* %141, i32 %144)
  %146 = load %struct.befs_sb_info*, %struct.befs_sb_info** %5, align 8
  %147 = getelementptr inbounds %struct.befs_sb_info, %struct.befs_sb_info* %146, i32 0, i32 1
  store i8* %145, i8** %147, align 8
  %148 = load %struct.befs_sb_info*, %struct.befs_sb_info** %5, align 8
  %149 = getelementptr inbounds %struct.befs_sb_info, %struct.befs_sb_info* %148, i32 0, i32 0
  store i32* null, i32** %149, align 8
  %150 = load i32, i32* @BEFS_OK, align 4
  ret i32 %150
}

declare dso_local %struct.befs_sb_info* @BEFS_SB(%struct.super_block*) #1

declare dso_local i8* @fs32_to_cpu(%struct.super_block*, i32) #1

declare dso_local i8* @fs64_to_cpu(%struct.super_block*, i32) #1

declare dso_local i8* @fsrun_to_cpu(%struct.super_block*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

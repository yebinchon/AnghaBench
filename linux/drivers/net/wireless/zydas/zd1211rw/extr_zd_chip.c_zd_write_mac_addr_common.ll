; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/zydas/zd1211rw/extr_zd_chip.c_zd_write_mac_addr_common.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/zydas/zd1211rw/extr_zd_chip.c_zd_write_mac_addr_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zd_chip = type { i32 }
%struct.zd_ioreq32 = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"%s addr %pM\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"set NULL %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zd_chip*, i32*, %struct.zd_ioreq32*, i8*)* @zd_write_mac_addr_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zd_write_mac_addr_common(%struct.zd_chip* %0, i32* %1, %struct.zd_ioreq32* %2, i8* %3) #0 {
  %5 = alloca %struct.zd_chip*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.zd_ioreq32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [2 x %struct.zd_ioreq32], align 4
  store %struct.zd_chip* %0, %struct.zd_chip** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.zd_ioreq32* %2, %struct.zd_ioreq32** %7, align 8
  store i8* %3, i8** %8, align 8
  %11 = getelementptr inbounds [2 x %struct.zd_ioreq32], [2 x %struct.zd_ioreq32]* %10, i64 0, i64 0
  %12 = load %struct.zd_ioreq32*, %struct.zd_ioreq32** %7, align 8
  %13 = getelementptr inbounds %struct.zd_ioreq32, %struct.zd_ioreq32* %12, i64 0
  %14 = bitcast %struct.zd_ioreq32* %11 to i8*
  %15 = bitcast %struct.zd_ioreq32* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %14, i8* align 4 %15, i64 4, i1 false)
  %16 = getelementptr inbounds %struct.zd_ioreq32, %struct.zd_ioreq32* %11, i64 1
  %17 = load %struct.zd_ioreq32*, %struct.zd_ioreq32** %7, align 8
  %18 = getelementptr inbounds %struct.zd_ioreq32, %struct.zd_ioreq32* %17, i64 1
  %19 = bitcast %struct.zd_ioreq32* %16 to i8*
  %20 = bitcast %struct.zd_ioreq32* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %19, i8* align 4 %20, i64 4, i1 false)
  %21 = load i32*, i32** %6, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %59

23:                                               ; preds = %4
  %24 = load i32*, i32** %6, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 3
  %26 = load i32, i32* %25, align 4
  %27 = shl i32 %26, 24
  %28 = load i32*, i32** %6, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 2
  %30 = load i32, i32* %29, align 4
  %31 = shl i32 %30, 16
  %32 = or i32 %27, %31
  %33 = load i32*, i32** %6, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 1
  %35 = load i32, i32* %34, align 4
  %36 = shl i32 %35, 8
  %37 = or i32 %32, %36
  %38 = load i32*, i32** %6, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %37, %40
  %42 = getelementptr inbounds [2 x %struct.zd_ioreq32], [2 x %struct.zd_ioreq32]* %10, i64 0, i64 0
  %43 = getelementptr inbounds %struct.zd_ioreq32, %struct.zd_ioreq32* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  %44 = load i32*, i32** %6, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 5
  %46 = load i32, i32* %45, align 4
  %47 = shl i32 %46, 8
  %48 = load i32*, i32** %6, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 4
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %47, %50
  %52 = getelementptr inbounds [2 x %struct.zd_ioreq32], [2 x %struct.zd_ioreq32]* %10, i64 0, i64 1
  %53 = getelementptr inbounds %struct.zd_ioreq32, %struct.zd_ioreq32* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  %54 = load %struct.zd_chip*, %struct.zd_chip** %5, align 8
  %55 = call i32 @zd_chip_dev(%struct.zd_chip* %54)
  %56 = load i8*, i8** %8, align 8
  %57 = load i32*, i32** %6, align 8
  %58 = call i32 (i32, i8*, i8*, ...) @dev_dbg_f(i32 %55, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %56, i32* %57)
  br label %64

59:                                               ; preds = %4
  %60 = load %struct.zd_chip*, %struct.zd_chip** %5, align 8
  %61 = call i32 @zd_chip_dev(%struct.zd_chip* %60)
  %62 = load i8*, i8** %8, align 8
  %63 = call i32 (i32, i8*, i8*, ...) @dev_dbg_f(i32 %61, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* %62)
  br label %64

64:                                               ; preds = %59, %23
  %65 = load %struct.zd_chip*, %struct.zd_chip** %5, align 8
  %66 = getelementptr inbounds %struct.zd_chip, %struct.zd_chip* %65, i32 0, i32 0
  %67 = call i32 @mutex_lock(i32* %66)
  %68 = load %struct.zd_chip*, %struct.zd_chip** %5, align 8
  %69 = getelementptr inbounds [2 x %struct.zd_ioreq32], [2 x %struct.zd_ioreq32]* %10, i64 0, i64 0
  %70 = getelementptr inbounds [2 x %struct.zd_ioreq32], [2 x %struct.zd_ioreq32]* %10, i64 0, i64 0
  %71 = call i32 @ARRAY_SIZE(%struct.zd_ioreq32* %70)
  %72 = call i32 @zd_iowrite32a_locked(%struct.zd_chip* %68, %struct.zd_ioreq32* %69, i32 %71)
  store i32 %72, i32* %9, align 4
  %73 = load %struct.zd_chip*, %struct.zd_chip** %5, align 8
  %74 = getelementptr inbounds %struct.zd_chip, %struct.zd_chip* %73, i32 0, i32 0
  %75 = call i32 @mutex_unlock(i32* %74)
  %76 = load i32, i32* %9, align 4
  ret i32 %76
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @dev_dbg_f(i32, i8*, i8*, ...) #2

declare dso_local i32 @zd_chip_dev(%struct.zd_chip*) #2

declare dso_local i32 @mutex_lock(i32*) #2

declare dso_local i32 @zd_iowrite32a_locked(%struct.zd_chip*, %struct.zd_ioreq32*, i32) #2

declare dso_local i32 @ARRAY_SIZE(%struct.zd_ioreq32*) #2

declare dso_local i32 @mutex_unlock(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

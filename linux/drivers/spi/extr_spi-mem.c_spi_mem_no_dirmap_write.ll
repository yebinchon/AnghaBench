; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-mem.c_spi_mem_no_dirmap_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-mem.c_spi_mem_no_dirmap_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_mem_dirmap_desc = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, %struct.spi_mem_op }
%struct.spi_mem_op = type { %struct.TYPE_6__, %struct.TYPE_7__ }
%struct.TYPE_6__ = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i8* }
%struct.TYPE_7__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_mem_dirmap_desc*, i64, i64, i8*)* @spi_mem_no_dirmap_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spi_mem_no_dirmap_write(%struct.spi_mem_dirmap_desc* %0, i64 %1, i64 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.spi_mem_dirmap_desc*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.spi_mem_op, align 8
  %11 = alloca i32, align 4
  store %struct.spi_mem_dirmap_desc* %0, %struct.spi_mem_dirmap_desc** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = load %struct.spi_mem_dirmap_desc*, %struct.spi_mem_dirmap_desc** %6, align 8
  %13 = getelementptr inbounds %struct.spi_mem_dirmap_desc, %struct.spi_mem_dirmap_desc* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 1
  %15 = bitcast %struct.spi_mem_op* %10 to i8*
  %16 = bitcast %struct.spi_mem_op* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %15, i8* align 8 %16, i64 24, i1 false)
  %17 = load %struct.spi_mem_dirmap_desc*, %struct.spi_mem_dirmap_desc** %6, align 8
  %18 = getelementptr inbounds %struct.spi_mem_dirmap_desc, %struct.spi_mem_dirmap_desc* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* %7, align 8
  %22 = add nsw i64 %20, %21
  %23 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %10, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  store i64 %22, i64* %24, align 8
  %25 = load i8*, i8** %9, align 8
  %26 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %10, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  store i8* %25, i8** %28, align 8
  %29 = load i64, i64* %8, align 8
  %30 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %10, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  %32 = load %struct.spi_mem_dirmap_desc*, %struct.spi_mem_dirmap_desc** %6, align 8
  %33 = getelementptr inbounds %struct.spi_mem_dirmap_desc, %struct.spi_mem_dirmap_desc* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @spi_mem_adjust_op_size(i32 %34, %struct.spi_mem_op* %10)
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %11, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %4
  %39 = load i32, i32* %11, align 4
  store i32 %39, i32* %5, align 4
  br label %54

40:                                               ; preds = %4
  %41 = load %struct.spi_mem_dirmap_desc*, %struct.spi_mem_dirmap_desc** %6, align 8
  %42 = getelementptr inbounds %struct.spi_mem_dirmap_desc, %struct.spi_mem_dirmap_desc* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @spi_mem_exec_op(i32 %43, %struct.spi_mem_op* %10)
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* %11, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %40
  %48 = load i32, i32* %11, align 4
  store i32 %48, i32* %5, align 4
  br label %54

49:                                               ; preds = %40
  %50 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %10, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %5, align 4
  br label %54

54:                                               ; preds = %49, %47, %38
  %55 = load i32, i32* %5, align 4
  ret i32 %55
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @spi_mem_adjust_op_size(i32, %struct.spi_mem_op*) #2

declare dso_local i32 @spi_mem_exec_op(i32, %struct.spi_mem_op*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

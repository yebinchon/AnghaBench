; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/fnic/extr_fcpio.h_fcpio_header_dec.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/fnic/extr_fcpio.h_fcpio_header_dec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fcpio_header = type { %struct.fcpio_tag, i32, i32 }
%struct.fcpio_tag = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fcpio_header*, i32*, i32*, %struct.fcpio_tag*)* @fcpio_header_dec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fcpio_header_dec(%struct.fcpio_header* %0, i32* %1, i32* %2, %struct.fcpio_tag* %3) #0 {
  %5 = alloca %struct.fcpio_header*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.fcpio_tag*, align 8
  store %struct.fcpio_header* %0, %struct.fcpio_header** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store %struct.fcpio_tag* %3, %struct.fcpio_tag** %8, align 8
  %9 = load %struct.fcpio_header*, %struct.fcpio_header** %5, align 8
  %10 = getelementptr inbounds %struct.fcpio_header, %struct.fcpio_header* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = load i32*, i32** %6, align 8
  store i32 %11, i32* %12, align 4
  %13 = load %struct.fcpio_header*, %struct.fcpio_header** %5, align 8
  %14 = getelementptr inbounds %struct.fcpio_header, %struct.fcpio_header* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32*, i32** %7, align 8
  store i32 %15, i32* %16, align 4
  %17 = load %struct.fcpio_tag*, %struct.fcpio_tag** %8, align 8
  %18 = load %struct.fcpio_header*, %struct.fcpio_header** %5, align 8
  %19 = getelementptr inbounds %struct.fcpio_header, %struct.fcpio_header* %18, i32 0, i32 0
  %20 = bitcast %struct.fcpio_tag* %17 to i8*
  %21 = bitcast %struct.fcpio_tag* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %20, i8* align 4 %21, i64 4, i1 false)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

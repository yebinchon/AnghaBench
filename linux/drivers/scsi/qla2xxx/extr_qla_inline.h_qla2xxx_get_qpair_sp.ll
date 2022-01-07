; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_inline.h_qla2xxx_get_qpair_sp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_inline.h_qla2xxx_get_qpair_sp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qla_qpair = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, %struct.qla_qpair*, i32*, i32)* @qla2xxx_get_qpair_sp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @qla2xxx_get_qpair_sp(i32* %0, %struct.qla_qpair* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.qla_qpair*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.qla_qpair* %1, %struct.qla_qpair** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* null, i32** %10, align 8
  %12 = load %struct.qla_qpair*, %struct.qla_qpair** %7, align 8
  %13 = load i32, i32* %11, align 4
  %14 = call i32 @QLA_QPAIR_MARK_BUSY(%struct.qla_qpair* %12, i32 %13)
  %15 = load i32, i32* %11, align 4
  %16 = call i64 @unlikely(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  store i32* null, i32** %5, align 8
  br label %38

19:                                               ; preds = %4
  %20 = load %struct.qla_qpair*, %struct.qla_qpair** %7, align 8
  %21 = getelementptr inbounds %struct.qla_qpair, %struct.qla_qpair* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %9, align 4
  %24 = call i32* @mempool_alloc(i32 %22, i32 %23)
  store i32* %24, i32** %10, align 8
  %25 = load i32*, i32** %10, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %33

27:                                               ; preds = %19
  %28 = load i32*, i32** %10, align 8
  %29 = load i32*, i32** %6, align 8
  %30 = load %struct.qla_qpair*, %struct.qla_qpair** %7, align 8
  %31 = load i32*, i32** %8, align 8
  %32 = call i32 @qla2xxx_init_sp(i32* %28, i32* %29, %struct.qla_qpair* %30, i32* %31)
  br label %36

33:                                               ; preds = %19
  %34 = load %struct.qla_qpair*, %struct.qla_qpair** %7, align 8
  %35 = call i32 @QLA_QPAIR_MARK_NOT_BUSY(%struct.qla_qpair* %34)
  br label %36

36:                                               ; preds = %33, %27
  %37 = load i32*, i32** %10, align 8
  store i32* %37, i32** %5, align 8
  br label %38

38:                                               ; preds = %36, %18
  %39 = load i32*, i32** %5, align 8
  ret i32* %39
}

declare dso_local i32 @QLA_QPAIR_MARK_BUSY(%struct.qla_qpair*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32* @mempool_alloc(i32, i32) #1

declare dso_local i32 @qla2xxx_init_sp(i32*, i32*, %struct.qla_qpair*, i32*) #1

declare dso_local i32 @QLA_QPAIR_MARK_NOT_BUSY(%struct.qla_qpair*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

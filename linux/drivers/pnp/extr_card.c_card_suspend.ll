; ModuleID = '/home/carl/AnghaBench/linux/drivers/pnp/extr_card.c_card_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pnp/extr_card.c_card_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pnp_dev = type { %struct.pnp_card_link* }
%struct.pnp_card_link = type { %struct.TYPE_5__*, %struct.TYPE_6__ }
%struct.TYPE_5__ = type { i32 (%struct.pnp_card_link*, i64)* }
%struct.TYPE_6__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pnp_dev*, i64)* @card_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @card_suspend(%struct.pnp_dev* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__, align 8
  %5 = alloca %struct.pnp_dev*, align 8
  %6 = alloca %struct.pnp_card_link*, align 8
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  store i64 %1, i64* %7, align 8
  store %struct.pnp_dev* %0, %struct.pnp_dev** %5, align 8
  %8 = load %struct.pnp_dev*, %struct.pnp_dev** %5, align 8
  %9 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %8, i32 0, i32 0
  %10 = load %struct.pnp_card_link*, %struct.pnp_card_link** %9, align 8
  store %struct.pnp_card_link* %10, %struct.pnp_card_link** %6, align 8
  %11 = load %struct.pnp_card_link*, %struct.pnp_card_link** %6, align 8
  %12 = getelementptr inbounds %struct.pnp_card_link, %struct.pnp_card_link* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %14, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %33

19:                                               ; preds = %2
  %20 = load %struct.pnp_card_link*, %struct.pnp_card_link** %6, align 8
  %21 = getelementptr inbounds %struct.pnp_card_link, %struct.pnp_card_link* %20, i32 0, i32 1
  %22 = bitcast %struct.TYPE_6__* %21 to i8*
  %23 = bitcast %struct.TYPE_6__* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %22, i8* align 8 %23, i64 8, i1 false)
  %24 = load %struct.pnp_card_link*, %struct.pnp_card_link** %6, align 8
  %25 = getelementptr inbounds %struct.pnp_card_link, %struct.pnp_card_link* %24, i32 0, i32 0
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32 (%struct.pnp_card_link*, i64)*, i32 (%struct.pnp_card_link*, i64)** %27, align 8
  %29 = load %struct.pnp_card_link*, %struct.pnp_card_link** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i32 %28(%struct.pnp_card_link* %29, i64 %31)
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %19, %18
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

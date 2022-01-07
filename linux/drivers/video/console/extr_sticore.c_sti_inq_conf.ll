; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/console/extr_sticore.c_sti_inq_conf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/console/extr_sticore.c_sti_inq_conf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sti_struct = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.sti_conf_outptr, %struct.sti_conf_inptr }
%struct.sti_conf_outptr = type { i32 }
%struct.sti_conf_inptr = type { i32 }

@default_conf_flags = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sti_struct*)* @sti_inq_conf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sti_inq_conf(%struct.sti_struct* %0) #0 {
  %2 = alloca %struct.sti_struct*, align 8
  %3 = alloca %struct.sti_conf_inptr*, align 8
  %4 = alloca %struct.sti_conf_outptr*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.sti_struct* %0, %struct.sti_struct** %2, align 8
  %7 = load %struct.sti_struct*, %struct.sti_struct** %2, align 8
  %8 = getelementptr inbounds %struct.sti_struct, %struct.sti_struct* %7, i32 0, i32 3
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 2
  store %struct.sti_conf_inptr* %10, %struct.sti_conf_inptr** %3, align 8
  %11 = load %struct.sti_struct*, %struct.sti_struct** %2, align 8
  %12 = getelementptr inbounds %struct.sti_struct, %struct.sti_struct* %11, i32 0, i32 3
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  store %struct.sti_conf_outptr* %14, %struct.sti_conf_outptr** %4, align 8
  %15 = load %struct.sti_struct*, %struct.sti_struct** %2, align 8
  %16 = getelementptr inbounds %struct.sti_struct, %struct.sti_struct* %15, i32 0, i32 3
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = call i32 @STI_PTR(i32* %18)
  %20 = load %struct.sti_conf_outptr*, %struct.sti_conf_outptr** %4, align 8
  %21 = getelementptr inbounds %struct.sti_conf_outptr, %struct.sti_conf_outptr* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  br label %22

22:                                               ; preds = %43, %1
  %23 = load %struct.sti_struct*, %struct.sti_struct** %2, align 8
  %24 = getelementptr inbounds %struct.sti_struct, %struct.sti_struct* %23, i32 0, i32 0
  %25 = load i64, i64* %5, align 8
  %26 = call i32 @spin_lock_irqsave(i32* %24, i64 %25)
  %27 = load %struct.sti_conf_inptr*, %struct.sti_conf_inptr** %3, align 8
  %28 = call i32 @memset(%struct.sti_conf_inptr* %27, i32 0, i32 4)
  %29 = load %struct.sti_struct*, %struct.sti_struct** %2, align 8
  %30 = load %struct.sti_struct*, %struct.sti_struct** %2, align 8
  %31 = getelementptr inbounds %struct.sti_struct, %struct.sti_struct* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.sti_conf_inptr*, %struct.sti_conf_inptr** %3, align 8
  %34 = load %struct.sti_conf_outptr*, %struct.sti_conf_outptr** %4, align 8
  %35 = load %struct.sti_struct*, %struct.sti_struct** %2, align 8
  %36 = getelementptr inbounds %struct.sti_struct, %struct.sti_struct* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @sti_call(%struct.sti_struct* %29, i32 %32, i32* @default_conf_flags, %struct.sti_conf_inptr* %33, %struct.sti_conf_outptr* %34, i32 %37)
  store i32 %38, i32* %6, align 4
  %39 = load %struct.sti_struct*, %struct.sti_struct** %2, align 8
  %40 = getelementptr inbounds %struct.sti_struct, %struct.sti_struct* %39, i32 0, i32 0
  %41 = load i64, i64* %5, align 8
  %42 = call i32 @spin_unlock_irqrestore(i32* %40, i64 %41)
  br label %43

43:                                               ; preds = %22
  %44 = load i32, i32* %6, align 4
  %45 = icmp eq i32 %44, 1
  br i1 %45, label %22, label %46

46:                                               ; preds = %43
  ret void
}

declare dso_local i32 @STI_PTR(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @memset(%struct.sti_conf_inptr*, i32, i32) #1

declare dso_local i32 @sti_call(%struct.sti_struct*, i32, i32*, %struct.sti_conf_inptr*, %struct.sti_conf_outptr*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

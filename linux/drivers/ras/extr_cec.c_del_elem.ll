; ModuleID = '/home/carl/AnghaBench/linux/drivers/ras/extr_cec.c_del_elem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ras/extr_cec.c_del_elem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ce_array = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ce_array*, i32)* @del_elem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @del_elem(%struct.ce_array* %0, i32 %1) #0 {
  %3 = alloca %struct.ce_array*, align 8
  %4 = alloca i32, align 4
  store %struct.ce_array* %0, %struct.ce_array** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.ce_array*, %struct.ce_array** %3, align 8
  %6 = getelementptr inbounds %struct.ce_array, %struct.ce_array* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* %4, align 4
  %9 = add nsw i32 %8, 1
  %10 = sub nsw i32 %7, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %38

12:                                               ; preds = %2
  %13 = load %struct.ce_array*, %struct.ce_array** %3, align 8
  %14 = getelementptr inbounds %struct.ce_array, %struct.ce_array* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = bitcast i32* %18 to i8*
  %20 = load %struct.ce_array*, %struct.ce_array** %3, align 8
  %21 = getelementptr inbounds %struct.ce_array, %struct.ce_array* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %4, align 4
  %24 = add nsw i32 %23, 1
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %22, i64 %25
  %27 = bitcast i32* %26 to i8*
  %28 = load %struct.ce_array*, %struct.ce_array** %3, align 8
  %29 = getelementptr inbounds %struct.ce_array, %struct.ce_array* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %4, align 4
  %32 = add nsw i32 %31, 1
  %33 = sub nsw i32 %30, %32
  %34 = sext i32 %33 to i64
  %35 = mul i64 %34, 4
  %36 = trunc i64 %35 to i32
  %37 = call i32 @memmove(i8* %19, i8* %27, i32 %36)
  br label %38

38:                                               ; preds = %12, %2
  %39 = load %struct.ce_array*, %struct.ce_array** %3, align 8
  %40 = getelementptr inbounds %struct.ce_array, %struct.ce_array* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = add nsw i32 %41, -1
  store i32 %42, i32* %40, align 8
  ret void
}

declare dso_local i32 @memmove(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

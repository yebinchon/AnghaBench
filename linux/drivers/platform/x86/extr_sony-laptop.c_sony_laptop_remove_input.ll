; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_sony-laptop.c_sony_laptop_remove_input.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_sony-laptop.c_sony_laptop_remove_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32*, i32*, i32, i32 }
%struct.sony_laptop_keypress = type { i32, i32, i32* }

@sony_laptop_input = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @sony_laptop_remove_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sony_laptop_remove_input() #0 {
  %1 = alloca %struct.sony_laptop_keypress, align 8
  %2 = bitcast %struct.sony_laptop_keypress* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %2, i8 0, i64 16, i1 false)
  %3 = call i32 @atomic_dec_and_test(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sony_laptop_input, i32 0, i32 4))
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %0
  br label %32

6:                                                ; preds = %0
  %7 = call i32 @del_timer_sync(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sony_laptop_input, i32 0, i32 3))
  br label %8

8:                                                ; preds = %13, %6
  %9 = bitcast %struct.sony_laptop_keypress* %1 to i8*
  %10 = call i32 @kfifo_out(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sony_laptop_input, i32 0, i32 0), i8* %9, i32 16)
  %11 = sext i32 %10 to i64
  %12 = icmp eq i64 %11, 16
  br i1 %12, label %13, label %22

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.sony_laptop_keypress, %struct.sony_laptop_keypress* %1, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = getelementptr inbounds %struct.sony_laptop_keypress, %struct.sony_laptop_keypress* %1, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @input_report_key(i32 %15, i32 %17, i32 0)
  %19 = getelementptr inbounds %struct.sony_laptop_keypress, %struct.sony_laptop_keypress* %1, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @input_sync(i32 %20)
  br label %8

22:                                               ; preds = %8
  %23 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sony_laptop_input, i32 0, i32 2), align 8
  %24 = call i32 @input_unregister_device(i32* %23)
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sony_laptop_input, i32 0, i32 2), align 8
  %25 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sony_laptop_input, i32 0, i32 1), align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sony_laptop_input, i32 0, i32 1), align 8
  %29 = call i32 @input_unregister_device(i32* %28)
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sony_laptop_input, i32 0, i32 1), align 8
  br label %30

30:                                               ; preds = %27, %22
  %31 = call i32 @kfifo_free(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sony_laptop_input, i32 0, i32 0))
  br label %32

32:                                               ; preds = %30, %5
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @atomic_dec_and_test(i32*) #2

declare dso_local i32 @del_timer_sync(i32*) #2

declare dso_local i32 @kfifo_out(i32*, i8*, i32) #2

declare dso_local i32 @input_report_key(i32, i32, i32) #2

declare dso_local i32 @input_sync(i32) #2

declare dso_local i32 @input_unregister_device(i32*) #2

declare dso_local i32 @kfifo_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

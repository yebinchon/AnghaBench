; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_n_r3964.c_remove_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_n_r3964.c_remove_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r3964_message = type { i64, %struct.r3964_message* }
%struct.r3964_info = type { i32 }
%struct.r3964_client_info = type { i32, i64, i32, i32*, %struct.r3964_message* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.r3964_message* (%struct.r3964_info*, %struct.r3964_client_info*)* @remove_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.r3964_message* @remove_msg(%struct.r3964_info* %0, %struct.r3964_client_info* %1) #0 {
  %3 = alloca %struct.r3964_info*, align 8
  %4 = alloca %struct.r3964_client_info*, align 8
  %5 = alloca %struct.r3964_message*, align 8
  %6 = alloca i64, align 8
  store %struct.r3964_info* %0, %struct.r3964_info** %3, align 8
  store %struct.r3964_client_info* %1, %struct.r3964_client_info** %4, align 8
  store %struct.r3964_message* null, %struct.r3964_message** %5, align 8
  %7 = load %struct.r3964_client_info*, %struct.r3964_client_info** %4, align 8
  %8 = getelementptr inbounds %struct.r3964_client_info, %struct.r3964_client_info* %7, i32 0, i32 4
  %9 = load %struct.r3964_message*, %struct.r3964_message** %8, align 8
  %10 = icmp ne %struct.r3964_message* %9, null
  br i1 %10, label %11, label %54

11:                                               ; preds = %2
  %12 = load %struct.r3964_client_info*, %struct.r3964_client_info** %4, align 8
  %13 = getelementptr inbounds %struct.r3964_client_info, %struct.r3964_client_info* %12, i32 0, i32 0
  %14 = load i64, i64* %6, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load %struct.r3964_client_info*, %struct.r3964_client_info** %4, align 8
  %17 = getelementptr inbounds %struct.r3964_client_info, %struct.r3964_client_info* %16, i32 0, i32 4
  %18 = load %struct.r3964_message*, %struct.r3964_message** %17, align 8
  store %struct.r3964_message* %18, %struct.r3964_message** %5, align 8
  %19 = load %struct.r3964_message*, %struct.r3964_message** %5, align 8
  %20 = getelementptr inbounds %struct.r3964_message, %struct.r3964_message* %19, i32 0, i32 1
  %21 = load %struct.r3964_message*, %struct.r3964_message** %20, align 8
  %22 = load %struct.r3964_client_info*, %struct.r3964_client_info** %4, align 8
  %23 = getelementptr inbounds %struct.r3964_client_info, %struct.r3964_client_info* %22, i32 0, i32 4
  store %struct.r3964_message* %21, %struct.r3964_message** %23, align 8
  %24 = load %struct.r3964_client_info*, %struct.r3964_client_info** %4, align 8
  %25 = getelementptr inbounds %struct.r3964_client_info, %struct.r3964_client_info* %24, i32 0, i32 4
  %26 = load %struct.r3964_message*, %struct.r3964_message** %25, align 8
  %27 = icmp eq %struct.r3964_message* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %11
  %29 = load %struct.r3964_client_info*, %struct.r3964_client_info** %4, align 8
  %30 = getelementptr inbounds %struct.r3964_client_info, %struct.r3964_client_info* %29, i32 0, i32 3
  store i32* null, i32** %30, align 8
  br label %31

31:                                               ; preds = %28, %11
  %32 = load %struct.r3964_client_info*, %struct.r3964_client_info** %4, align 8
  %33 = getelementptr inbounds %struct.r3964_client_info, %struct.r3964_client_info* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = add nsw i32 %34, -1
  store i32 %35, i32* %33, align 8
  %36 = load %struct.r3964_message*, %struct.r3964_message** %5, align 8
  %37 = getelementptr inbounds %struct.r3964_message, %struct.r3964_message* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %31
  %41 = load %struct.r3964_info*, %struct.r3964_info** %3, align 8
  %42 = load %struct.r3964_client_info*, %struct.r3964_client_info** %4, align 8
  %43 = call i32 @remove_client_block(%struct.r3964_info* %41, %struct.r3964_client_info* %42)
  %44 = load %struct.r3964_message*, %struct.r3964_message** %5, align 8
  %45 = getelementptr inbounds %struct.r3964_message, %struct.r3964_message* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.r3964_client_info*, %struct.r3964_client_info** %4, align 8
  %48 = getelementptr inbounds %struct.r3964_client_info, %struct.r3964_client_info* %47, i32 0, i32 1
  store i64 %46, i64* %48, align 8
  br label %49

49:                                               ; preds = %40, %31
  %50 = load %struct.r3964_client_info*, %struct.r3964_client_info** %4, align 8
  %51 = getelementptr inbounds %struct.r3964_client_info, %struct.r3964_client_info* %50, i32 0, i32 0
  %52 = load i64, i64* %6, align 8
  %53 = call i32 @spin_unlock_irqrestore(i32* %51, i64 %52)
  br label %54

54:                                               ; preds = %49, %2
  %55 = load %struct.r3964_message*, %struct.r3964_message** %5, align 8
  ret %struct.r3964_message* %55
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @remove_client_block(%struct.r3964_info*, %struct.r3964_client_info*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

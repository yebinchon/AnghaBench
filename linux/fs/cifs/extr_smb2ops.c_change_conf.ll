; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_smb2ops.c_change_conf.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_smb2ops.c_change_conf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TCP_Server_Info = type { i32, i32, i32, i32, i32 }

@enable_oplocks = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TCP_Server_Info*)* @change_conf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @change_conf(%struct.TCP_Server_Info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TCP_Server_Info*, align 8
  store %struct.TCP_Server_Info* %0, %struct.TCP_Server_Info** %3, align 8
  %4 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %3, align 8
  %5 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %3, align 8
  %8 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = add nsw i32 %6, %9
  %11 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %3, align 8
  %12 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = add nsw i32 %13, %10
  store i32 %14, i32* %12, align 4
  %15 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %3, align 8
  %16 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %15, i32 0, i32 1
  store i32 0, i32* %16, align 4
  %17 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %3, align 8
  %18 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %17, i32 0, i32 2
  store i32 0, i32* %18, align 4
  %19 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %3, align 8
  %20 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %35 [
    i32 0, label %22
    i32 1, label %23
    i32 2, label %28
  ]

22:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %74

23:                                               ; preds = %1
  %24 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %3, align 8
  %25 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %24, i32 0, i32 3
  store i32 0, i32* %25, align 4
  %26 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %3, align 8
  %27 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %26, i32 0, i32 4
  store i32 0, i32* %27, align 4
  br label %51

28:                                               ; preds = %1
  %29 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %3, align 8
  %30 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %29, i32 0, i32 3
  store i32 1, i32* %30, align 4
  %31 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %3, align 8
  %32 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %31, i32 0, i32 4
  store i32 0, i32* %32, align 4
  %33 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %3, align 8
  %34 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %33, i32 0, i32 1
  store i32 1, i32* %34, align 4
  br label %51

35:                                               ; preds = %1
  %36 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %3, align 8
  %37 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %36, i32 0, i32 3
  store i32 1, i32* %37, align 4
  %38 = load i32, i32* @enable_oplocks, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %3, align 8
  %42 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %41, i32 0, i32 4
  store i32 1, i32* %42, align 4
  %43 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %3, align 8
  %44 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %43, i32 0, i32 2
  store i32 1, i32* %44, align 4
  br label %48

45:                                               ; preds = %35
  %46 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %3, align 8
  %47 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %46, i32 0, i32 4
  store i32 0, i32* %47, align 4
  br label %48

48:                                               ; preds = %45, %40
  %49 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %3, align 8
  %50 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %49, i32 0, i32 1
  store i32 1, i32* %50, align 4
  br label %51

51:                                               ; preds = %48, %28, %23
  %52 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %3, align 8
  %53 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %3, align 8
  %56 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %54, %57
  %59 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %3, align 8
  %60 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = sub nsw i32 %61, %58
  store i32 %62, i32* %60, align 4
  %63 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %3, align 8
  %64 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %3, align 8
  %67 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = add nsw i32 %65, %68
  %70 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %3, align 8
  %71 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %69, %72
  store i32 %73, i32* %2, align 4
  br label %74

74:                                               ; preds = %51, %22
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

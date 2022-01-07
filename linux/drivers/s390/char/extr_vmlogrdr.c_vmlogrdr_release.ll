; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/char/extr_vmlogrdr.c_vmlogrdr_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/char/extr_vmlogrdr.c_vmlogrdr_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.vmlogrdr_priv_t* }
%struct.vmlogrdr_priv_t = type { i64, i32, i64, i32* }

@.str = private unnamed_addr constant [50 x i8] c"vmlogrdr: failed to stop recording automatically\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @vmlogrdr_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmlogrdr_release(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.vmlogrdr_priv_t*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %7 = load %struct.file*, %struct.file** %4, align 8
  %8 = getelementptr inbounds %struct.file, %struct.file* %7, i32 0, i32 0
  %9 = load %struct.vmlogrdr_priv_t*, %struct.vmlogrdr_priv_t** %8, align 8
  store %struct.vmlogrdr_priv_t* %9, %struct.vmlogrdr_priv_t** %6, align 8
  %10 = load %struct.vmlogrdr_priv_t*, %struct.vmlogrdr_priv_t** %6, align 8
  %11 = getelementptr inbounds %struct.vmlogrdr_priv_t, %struct.vmlogrdr_priv_t* %10, i32 0, i32 3
  %12 = load i32*, i32** %11, align 8
  %13 = call i32 @iucv_path_sever(i32* %12, i32* null)
  %14 = load %struct.vmlogrdr_priv_t*, %struct.vmlogrdr_priv_t** %6, align 8
  %15 = getelementptr inbounds %struct.vmlogrdr_priv_t, %struct.vmlogrdr_priv_t* %14, i32 0, i32 3
  %16 = load i32*, i32** %15, align 8
  %17 = call i32 @kfree(i32* %16)
  %18 = load %struct.vmlogrdr_priv_t*, %struct.vmlogrdr_priv_t** %6, align 8
  %19 = getelementptr inbounds %struct.vmlogrdr_priv_t, %struct.vmlogrdr_priv_t* %18, i32 0, i32 3
  store i32* null, i32** %19, align 8
  %20 = load %struct.vmlogrdr_priv_t*, %struct.vmlogrdr_priv_t** %6, align 8
  %21 = getelementptr inbounds %struct.vmlogrdr_priv_t, %struct.vmlogrdr_priv_t* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %2
  %25 = load %struct.vmlogrdr_priv_t*, %struct.vmlogrdr_priv_t** %6, align 8
  %26 = load %struct.vmlogrdr_priv_t*, %struct.vmlogrdr_priv_t** %6, align 8
  %27 = getelementptr inbounds %struct.vmlogrdr_priv_t, %struct.vmlogrdr_priv_t* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @vmlogrdr_recording(%struct.vmlogrdr_priv_t* %25, i32 0, i32 %28)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %24
  %33 = call i32 @pr_warn(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  br label %34

34:                                               ; preds = %32, %24
  br label %35

35:                                               ; preds = %34, %2
  %36 = load %struct.vmlogrdr_priv_t*, %struct.vmlogrdr_priv_t** %6, align 8
  %37 = getelementptr inbounds %struct.vmlogrdr_priv_t, %struct.vmlogrdr_priv_t* %36, i32 0, i32 0
  store i64 0, i64* %37, align 8
  ret i32 0
}

declare dso_local i32 @iucv_path_sever(i32*, i32*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @vmlogrdr_recording(%struct.vmlogrdr_priv_t*, i32, i32) #1

declare dso_local i32 @pr_warn(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/extr_nfcsim.c_nfcsim_debugfs_init_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/extr_nfcsim.c_nfcsim_debugfs_init_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfcsim = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.dentry = type { i32 }

@nfcsim_debugfs_root = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"nfcsim debugfs not initialized\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"nfc%d\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"Could not compute dev name for dev %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"Could not create debugfs entries for nfc%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"dropframe\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfcsim*)* @nfcsim_debugfs_init_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfcsim_debugfs_init_dev(%struct.nfcsim* %0) #0 {
  %2 = alloca %struct.nfcsim*, align 8
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca [5 x i8], align 1
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.nfcsim* %0, %struct.nfcsim** %2, align 8
  %7 = load i32, i32* @nfcsim_debugfs_root, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load %struct.nfcsim*, %struct.nfcsim** %2, align 8
  %11 = call i32 (%struct.nfcsim*, i8*, ...) @NFCSIM_ERR(%struct.nfcsim* %10, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %45

12:                                               ; preds = %1
  %13 = load %struct.nfcsim*, %struct.nfcsim** %2, align 8
  %14 = getelementptr inbounds %struct.nfcsim, %struct.nfcsim* %13, i32 0, i32 1
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %5, align 4
  %20 = getelementptr inbounds [5 x i8], [5 x i8]* %4, i64 0, i64 0
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @snprintf(i8* %20, i32 5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = icmp uge i64 %24, 5
  br i1 %25, label %26, label %30

26:                                               ; preds = %12
  %27 = load %struct.nfcsim*, %struct.nfcsim** %2, align 8
  %28 = load i32, i32* %5, align 4
  %29 = call i32 (%struct.nfcsim*, i8*, ...) @NFCSIM_ERR(%struct.nfcsim* %27, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %28)
  br label %45

30:                                               ; preds = %12
  %31 = getelementptr inbounds [5 x i8], [5 x i8]* %4, i64 0, i64 0
  %32 = load i32, i32* @nfcsim_debugfs_root, align 4
  %33 = call %struct.dentry* @debugfs_create_dir(i8* %31, i32 %32)
  store %struct.dentry* %33, %struct.dentry** %3, align 8
  %34 = load %struct.dentry*, %struct.dentry** %3, align 8
  %35 = icmp ne %struct.dentry* %34, null
  br i1 %35, label %40, label %36

36:                                               ; preds = %30
  %37 = load %struct.nfcsim*, %struct.nfcsim** %2, align 8
  %38 = load i32, i32* %5, align 4
  %39 = call i32 (%struct.nfcsim*, i8*, ...) @NFCSIM_ERR(%struct.nfcsim* %37, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i32 %38)
  br label %45

40:                                               ; preds = %30
  %41 = load %struct.dentry*, %struct.dentry** %3, align 8
  %42 = load %struct.nfcsim*, %struct.nfcsim** %2, align 8
  %43 = getelementptr inbounds %struct.nfcsim, %struct.nfcsim* %42, i32 0, i32 0
  %44 = call i32 @debugfs_create_u8(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 436, %struct.dentry* %41, i32* %43)
  br label %45

45:                                               ; preds = %40, %36, %26, %9
  ret void
}

declare dso_local i32 @NFCSIM_ERR(%struct.nfcsim*, i8*, ...) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local %struct.dentry* @debugfs_create_dir(i8*, i32) #1

declare dso_local i32 @debugfs_create_u8(i8*, i32, %struct.dentry*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

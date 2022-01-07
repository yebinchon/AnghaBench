; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_asus-wmi.c_asus_wmi_debugfs_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_asus-wmi.c_asus_wmi_debugfs_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asus_wmi_debugfs_node = type { i32, %struct.asus_wmi* }
%struct.asus_wmi = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"method_id\00", align 1
@S_IRUGO = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"dev_id\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"ctrl_param\00", align 1
@asus_wmi_debug_files = common dso_local global %struct.asus_wmi_debugfs_node* null, align 8
@S_IFREG = common dso_local global i32 0, align 4
@asus_wmi_debugfs_io_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.asus_wmi*)* @asus_wmi_debugfs_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @asus_wmi_debugfs_init(%struct.asus_wmi* %0) #0 {
  %2 = alloca %struct.asus_wmi*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.asus_wmi_debugfs_node*, align 8
  store %struct.asus_wmi* %0, %struct.asus_wmi** %2, align 8
  %5 = load %struct.asus_wmi*, %struct.asus_wmi** %2, align 8
  %6 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %5, i32 0, i32 1
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @debugfs_create_dir(i32 %9, i32* null)
  %11 = load %struct.asus_wmi*, %struct.asus_wmi** %2, align 8
  %12 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  store i32 %10, i32* %13, align 8
  %14 = load i32, i32* @S_IRUGO, align 4
  %15 = load i32, i32* @S_IWUSR, align 4
  %16 = or i32 %14, %15
  %17 = load %struct.asus_wmi*, %struct.asus_wmi** %2, align 8
  %18 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.asus_wmi*, %struct.asus_wmi** %2, align 8
  %22 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 3
  %24 = call i32 @debugfs_create_x32(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %20, i32* %23)
  %25 = load i32, i32* @S_IRUGO, align 4
  %26 = load i32, i32* @S_IWUSR, align 4
  %27 = or i32 %25, %26
  %28 = load %struct.asus_wmi*, %struct.asus_wmi** %2, align 8
  %29 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.asus_wmi*, %struct.asus_wmi** %2, align 8
  %33 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 2
  %35 = call i32 @debugfs_create_x32(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %27, i32 %31, i32* %34)
  %36 = load i32, i32* @S_IRUGO, align 4
  %37 = load i32, i32* @S_IWUSR, align 4
  %38 = or i32 %36, %37
  %39 = load %struct.asus_wmi*, %struct.asus_wmi** %2, align 8
  %40 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.asus_wmi*, %struct.asus_wmi** %2, align 8
  %44 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %46 = call i32 @debugfs_create_x32(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %38, i32 %42, i32* %45)
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %72, %1
  %48 = load i32, i32* %3, align 4
  %49 = load %struct.asus_wmi_debugfs_node*, %struct.asus_wmi_debugfs_node** @asus_wmi_debug_files, align 8
  %50 = call i32 @ARRAY_SIZE(%struct.asus_wmi_debugfs_node* %49)
  %51 = icmp slt i32 %48, %50
  br i1 %51, label %52, label %75

52:                                               ; preds = %47
  %53 = load %struct.asus_wmi_debugfs_node*, %struct.asus_wmi_debugfs_node** @asus_wmi_debug_files, align 8
  %54 = load i32, i32* %3, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.asus_wmi_debugfs_node, %struct.asus_wmi_debugfs_node* %53, i64 %55
  store %struct.asus_wmi_debugfs_node* %56, %struct.asus_wmi_debugfs_node** %4, align 8
  %57 = load %struct.asus_wmi*, %struct.asus_wmi** %2, align 8
  %58 = load %struct.asus_wmi_debugfs_node*, %struct.asus_wmi_debugfs_node** %4, align 8
  %59 = getelementptr inbounds %struct.asus_wmi_debugfs_node, %struct.asus_wmi_debugfs_node* %58, i32 0, i32 1
  store %struct.asus_wmi* %57, %struct.asus_wmi** %59, align 8
  %60 = load %struct.asus_wmi_debugfs_node*, %struct.asus_wmi_debugfs_node** %4, align 8
  %61 = getelementptr inbounds %struct.asus_wmi_debugfs_node, %struct.asus_wmi_debugfs_node* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @S_IFREG, align 4
  %64 = load i32, i32* @S_IRUGO, align 4
  %65 = or i32 %63, %64
  %66 = load %struct.asus_wmi*, %struct.asus_wmi** %2, align 8
  %67 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.asus_wmi_debugfs_node*, %struct.asus_wmi_debugfs_node** %4, align 8
  %71 = call i32 @debugfs_create_file(i32 %62, i32 %65, i32 %69, %struct.asus_wmi_debugfs_node* %70, i32* @asus_wmi_debugfs_io_ops)
  br label %72

72:                                               ; preds = %52
  %73 = load i32, i32* %3, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %3, align 4
  br label %47

75:                                               ; preds = %47
  ret void
}

declare dso_local i32 @debugfs_create_dir(i32, i32*) #1

declare dso_local i32 @debugfs_create_x32(i8*, i32, i32, i32*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.asus_wmi_debugfs_node*) #1

declare dso_local i32 @debugfs_create_file(i32, i32, i32, %struct.asus_wmi_debugfs_node*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

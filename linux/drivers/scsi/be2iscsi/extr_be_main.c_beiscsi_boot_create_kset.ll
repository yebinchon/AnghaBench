; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_main.c_beiscsi_boot_create_kset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_main.c_beiscsi_boot_create_kset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.beiscsi_hba = type { %struct.TYPE_3__*, %struct.boot_struct }
%struct.TYPE_3__ = type { i32 }
%struct.boot_struct = type { i32* }
%struct.iscsi_boot_kobj = type { i32 }

@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"BM_%d: boot_kset already created\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"BM_%d: boot_kset alloc failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@beiscsi_show_boot_tgt_info = common dso_local global i32 0, align 4
@beiscsi_tgt_get_attr_visibility = common dso_local global i32 0, align 4
@beiscsi_boot_kobj_release = common dso_local global i32 0, align 4
@beiscsi_show_boot_ini_info = common dso_local global i32 0, align 4
@beiscsi_ini_get_attr_visibility = common dso_local global i32 0, align 4
@beiscsi_show_boot_eth_info = common dso_local global i32 0, align 4
@beiscsi_eth_get_attr_visibility = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.beiscsi_hba*)* @beiscsi_boot_create_kset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @beiscsi_boot_create_kset(%struct.beiscsi_hba* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.beiscsi_hba*, align 8
  %4 = alloca %struct.boot_struct*, align 8
  %5 = alloca %struct.iscsi_boot_kobj*, align 8
  store %struct.beiscsi_hba* %0, %struct.beiscsi_hba** %3, align 8
  %6 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %7 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %6, i32 0, i32 1
  store %struct.boot_struct* %7, %struct.boot_struct** %4, align 8
  %8 = load %struct.boot_struct*, %struct.boot_struct** %4, align 8
  %9 = getelementptr inbounds %struct.boot_struct, %struct.boot_struct* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %14 = load i32, i32* @KERN_ERR, align 4
  %15 = call i32 @__beiscsi_log(%struct.beiscsi_hba* %13, i32 %14, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %107

16:                                               ; preds = %1
  %17 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %18 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %17, i32 0, i32 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32* @iscsi_boot_create_host_kset(i32 %21)
  %23 = load %struct.boot_struct*, %struct.boot_struct** %4, align 8
  %24 = getelementptr inbounds %struct.boot_struct, %struct.boot_struct* %23, i32 0, i32 0
  store i32* %22, i32** %24, align 8
  %25 = load %struct.boot_struct*, %struct.boot_struct** %4, align 8
  %26 = getelementptr inbounds %struct.boot_struct, %struct.boot_struct* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %35, label %29

29:                                               ; preds = %16
  %30 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %31 = load i32, i32* @KERN_ERR, align 4
  %32 = call i32 @__beiscsi_log(%struct.beiscsi_hba* %30, i32 %31, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %107

35:                                               ; preds = %16
  %36 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %37 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %36, i32 0, i32 0
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = call i32 @scsi_host_get(%struct.TYPE_3__* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %35
  br label %98

42:                                               ; preds = %35
  %43 = load %struct.boot_struct*, %struct.boot_struct** %4, align 8
  %44 = getelementptr inbounds %struct.boot_struct, %struct.boot_struct* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %47 = load i32, i32* @beiscsi_show_boot_tgt_info, align 4
  %48 = load i32, i32* @beiscsi_tgt_get_attr_visibility, align 4
  %49 = load i32, i32* @beiscsi_boot_kobj_release, align 4
  %50 = call %struct.iscsi_boot_kobj* @iscsi_boot_create_target(i32* %45, i32 0, %struct.beiscsi_hba* %46, i32 %47, i32 %48, i32 %49)
  store %struct.iscsi_boot_kobj* %50, %struct.iscsi_boot_kobj** %5, align 8
  %51 = load %struct.iscsi_boot_kobj*, %struct.iscsi_boot_kobj** %5, align 8
  %52 = icmp ne %struct.iscsi_boot_kobj* %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %42
  br label %93

54:                                               ; preds = %42
  %55 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %56 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %55, i32 0, i32 0
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = call i32 @scsi_host_get(%struct.TYPE_3__* %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %54
  br label %98

61:                                               ; preds = %54
  %62 = load %struct.boot_struct*, %struct.boot_struct** %4, align 8
  %63 = getelementptr inbounds %struct.boot_struct, %struct.boot_struct* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %66 = load i32, i32* @beiscsi_show_boot_ini_info, align 4
  %67 = load i32, i32* @beiscsi_ini_get_attr_visibility, align 4
  %68 = load i32, i32* @beiscsi_boot_kobj_release, align 4
  %69 = call %struct.iscsi_boot_kobj* @iscsi_boot_create_initiator(i32* %64, i32 0, %struct.beiscsi_hba* %65, i32 %66, i32 %67, i32 %68)
  store %struct.iscsi_boot_kobj* %69, %struct.iscsi_boot_kobj** %5, align 8
  %70 = load %struct.iscsi_boot_kobj*, %struct.iscsi_boot_kobj** %5, align 8
  %71 = icmp ne %struct.iscsi_boot_kobj* %70, null
  br i1 %71, label %73, label %72

72:                                               ; preds = %61
  br label %93

73:                                               ; preds = %61
  %74 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %75 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %74, i32 0, i32 0
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %75, align 8
  %77 = call i32 @scsi_host_get(%struct.TYPE_3__* %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %73
  br label %98

80:                                               ; preds = %73
  %81 = load %struct.boot_struct*, %struct.boot_struct** %4, align 8
  %82 = getelementptr inbounds %struct.boot_struct, %struct.boot_struct* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %85 = load i32, i32* @beiscsi_show_boot_eth_info, align 4
  %86 = load i32, i32* @beiscsi_eth_get_attr_visibility, align 4
  %87 = load i32, i32* @beiscsi_boot_kobj_release, align 4
  %88 = call %struct.iscsi_boot_kobj* @iscsi_boot_create_ethernet(i32* %83, i32 0, %struct.beiscsi_hba* %84, i32 %85, i32 %86, i32 %87)
  store %struct.iscsi_boot_kobj* %88, %struct.iscsi_boot_kobj** %5, align 8
  %89 = load %struct.iscsi_boot_kobj*, %struct.iscsi_boot_kobj** %5, align 8
  %90 = icmp ne %struct.iscsi_boot_kobj* %89, null
  br i1 %90, label %92, label %91

91:                                               ; preds = %80
  br label %93

92:                                               ; preds = %80
  store i32 0, i32* %2, align 4
  br label %107

93:                                               ; preds = %91, %72, %53
  %94 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %95 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %94, i32 0, i32 0
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %95, align 8
  %97 = call i32 @scsi_host_put(%struct.TYPE_3__* %96)
  br label %98

98:                                               ; preds = %93, %79, %60, %41
  %99 = load %struct.boot_struct*, %struct.boot_struct** %4, align 8
  %100 = getelementptr inbounds %struct.boot_struct, %struct.boot_struct* %99, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = call i32 @iscsi_boot_destroy_kset(i32* %101)
  %103 = load %struct.boot_struct*, %struct.boot_struct** %4, align 8
  %104 = getelementptr inbounds %struct.boot_struct, %struct.boot_struct* %103, i32 0, i32 0
  store i32* null, i32** %104, align 8
  %105 = load i32, i32* @ENOMEM, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %2, align 4
  br label %107

107:                                              ; preds = %98, %92, %29, %12
  %108 = load i32, i32* %2, align 4
  ret i32 %108
}

declare dso_local i32 @__beiscsi_log(%struct.beiscsi_hba*, i32, i8*) #1

declare dso_local i32* @iscsi_boot_create_host_kset(i32) #1

declare dso_local i32 @scsi_host_get(%struct.TYPE_3__*) #1

declare dso_local %struct.iscsi_boot_kobj* @iscsi_boot_create_target(i32*, i32, %struct.beiscsi_hba*, i32, i32, i32) #1

declare dso_local %struct.iscsi_boot_kobj* @iscsi_boot_create_initiator(i32*, i32, %struct.beiscsi_hba*, i32, i32, i32) #1

declare dso_local %struct.iscsi_boot_kobj* @iscsi_boot_create_ethernet(i32*, i32, %struct.beiscsi_hba*, i32, i32, i32) #1

declare dso_local i32 @scsi_host_put(%struct.TYPE_3__*) #1

declare dso_local i32 @iscsi_boot_destroy_kset(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

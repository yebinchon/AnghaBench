; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/char/extr_vmlogrdr.c_vmlogrdr_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/char/extr_vmlogrdr.c_vmlogrdr_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmlogrdr_priv_t = type { i32, i32, i32*, i32, i64, i64, i64, i32, i32, i32 }
%struct.inode = type { i32 }
%struct.file = type { i32, %struct.vmlogrdr_priv_t* }

@MAXMINOR = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@sys_ser = common dso_local global %struct.vmlogrdr_priv_t* null, align 8
@O_NONBLOCK = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"vmlogrdr: failed to start recording automatically\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@vmlogrdr_iucv_handler = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"vmlogrdr: iucv connection to %s failed with rc %i \0A\00", align 1
@conn_wait_queue = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @vmlogrdr_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmlogrdr_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.vmlogrdr_priv_t*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  store i32 0, i32* %6, align 4
  store %struct.vmlogrdr_priv_t* null, %struct.vmlogrdr_priv_t** %7, align 8
  store i32 0, i32* %8, align 4
  %10 = load %struct.inode*, %struct.inode** %4, align 8
  %11 = call i32 @iminor(%struct.inode* %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @MAXMINOR, align 4
  %14 = icmp sge i32 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @ENODEV, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %154

18:                                               ; preds = %2
  %19 = load %struct.vmlogrdr_priv_t*, %struct.vmlogrdr_priv_t** @sys_ser, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.vmlogrdr_priv_t, %struct.vmlogrdr_priv_t* %19, i64 %21
  store %struct.vmlogrdr_priv_t* %22, %struct.vmlogrdr_priv_t** %7, align 8
  %23 = load %struct.file*, %struct.file** %5, align 8
  %24 = getelementptr inbounds %struct.file, %struct.file* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @O_NONBLOCK, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %18
  %30 = load i32, i32* @EOPNOTSUPP, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %154

32:                                               ; preds = %18
  %33 = load %struct.vmlogrdr_priv_t*, %struct.vmlogrdr_priv_t** %7, align 8
  %34 = getelementptr inbounds %struct.vmlogrdr_priv_t, %struct.vmlogrdr_priv_t* %33, i32 0, i32 8
  %35 = call i32 @spin_lock_bh(i32* %34)
  %36 = load %struct.vmlogrdr_priv_t*, %struct.vmlogrdr_priv_t** %7, align 8
  %37 = getelementptr inbounds %struct.vmlogrdr_priv_t, %struct.vmlogrdr_priv_t* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %32
  %41 = load %struct.vmlogrdr_priv_t*, %struct.vmlogrdr_priv_t** %7, align 8
  %42 = getelementptr inbounds %struct.vmlogrdr_priv_t, %struct.vmlogrdr_priv_t* %41, i32 0, i32 8
  %43 = call i32 @spin_unlock_bh(i32* %42)
  %44 = load i32, i32* @EBUSY, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %154

46:                                               ; preds = %32
  %47 = load %struct.vmlogrdr_priv_t*, %struct.vmlogrdr_priv_t** %7, align 8
  %48 = getelementptr inbounds %struct.vmlogrdr_priv_t, %struct.vmlogrdr_priv_t* %47, i32 0, i32 0
  store i32 1, i32* %48, align 8
  %49 = load %struct.vmlogrdr_priv_t*, %struct.vmlogrdr_priv_t** %7, align 8
  %50 = getelementptr inbounds %struct.vmlogrdr_priv_t, %struct.vmlogrdr_priv_t* %49, i32 0, i32 6
  store i64 0, i64* %50, align 8
  %51 = load %struct.vmlogrdr_priv_t*, %struct.vmlogrdr_priv_t** %7, align 8
  %52 = getelementptr inbounds %struct.vmlogrdr_priv_t, %struct.vmlogrdr_priv_t* %51, i32 0, i32 5
  store i64 0, i64* %52, align 8
  %53 = load %struct.vmlogrdr_priv_t*, %struct.vmlogrdr_priv_t** %7, align 8
  %54 = getelementptr inbounds %struct.vmlogrdr_priv_t, %struct.vmlogrdr_priv_t* %53, i32 0, i32 9
  %55 = call i32 @atomic_set(i32* %54, i32 0)
  %56 = load %struct.vmlogrdr_priv_t*, %struct.vmlogrdr_priv_t** %7, align 8
  %57 = getelementptr inbounds %struct.vmlogrdr_priv_t, %struct.vmlogrdr_priv_t* %56, i32 0, i32 1
  store i32 1, i32* %57, align 4
  %58 = load %struct.vmlogrdr_priv_t*, %struct.vmlogrdr_priv_t** %7, align 8
  %59 = getelementptr inbounds %struct.vmlogrdr_priv_t, %struct.vmlogrdr_priv_t* %58, i32 0, i32 8
  %60 = call i32 @spin_unlock_bh(i32* %59)
  %61 = load %struct.vmlogrdr_priv_t*, %struct.vmlogrdr_priv_t** %7, align 8
  %62 = load %struct.file*, %struct.file** %5, align 8
  %63 = getelementptr inbounds %struct.file, %struct.file* %62, i32 0, i32 1
  store %struct.vmlogrdr_priv_t* %61, %struct.vmlogrdr_priv_t** %63, align 8
  %64 = load %struct.vmlogrdr_priv_t*, %struct.vmlogrdr_priv_t** %7, align 8
  %65 = getelementptr inbounds %struct.vmlogrdr_priv_t, %struct.vmlogrdr_priv_t* %64, i32 0, i32 4
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %79

68:                                               ; preds = %46
  %69 = load %struct.vmlogrdr_priv_t*, %struct.vmlogrdr_priv_t** %7, align 8
  %70 = load %struct.vmlogrdr_priv_t*, %struct.vmlogrdr_priv_t** %7, align 8
  %71 = getelementptr inbounds %struct.vmlogrdr_priv_t, %struct.vmlogrdr_priv_t* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @vmlogrdr_recording(%struct.vmlogrdr_priv_t* %69, i32 1, i32 %72)
  store i32 %73, i32* %9, align 4
  %74 = load i32, i32* %9, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %68
  %77 = call i32 @pr_warn(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  br label %78

78:                                               ; preds = %76, %68
  br label %79

79:                                               ; preds = %78, %46
  %80 = load i32, i32* @GFP_KERNEL, align 4
  %81 = call i32* @iucv_path_alloc(i32 10, i32 0, i32 %80)
  %82 = load %struct.vmlogrdr_priv_t*, %struct.vmlogrdr_priv_t** %7, align 8
  %83 = getelementptr inbounds %struct.vmlogrdr_priv_t, %struct.vmlogrdr_priv_t* %82, i32 0, i32 2
  store i32* %81, i32** %83, align 8
  %84 = load %struct.vmlogrdr_priv_t*, %struct.vmlogrdr_priv_t** %7, align 8
  %85 = getelementptr inbounds %struct.vmlogrdr_priv_t, %struct.vmlogrdr_priv_t* %84, i32 0, i32 2
  %86 = load i32*, i32** %85, align 8
  %87 = icmp ne i32* %86, null
  br i1 %87, label %89, label %88

88:                                               ; preds = %79
  br label %149

89:                                               ; preds = %79
  %90 = load %struct.vmlogrdr_priv_t*, %struct.vmlogrdr_priv_t** %7, align 8
  %91 = getelementptr inbounds %struct.vmlogrdr_priv_t, %struct.vmlogrdr_priv_t* %90, i32 0, i32 2
  %92 = load i32*, i32** %91, align 8
  %93 = load %struct.vmlogrdr_priv_t*, %struct.vmlogrdr_priv_t** %7, align 8
  %94 = getelementptr inbounds %struct.vmlogrdr_priv_t, %struct.vmlogrdr_priv_t* %93, i32 0, i32 7
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.vmlogrdr_priv_t*, %struct.vmlogrdr_priv_t** %7, align 8
  %97 = call i32 @iucv_path_connect(i32* %92, i32* @vmlogrdr_iucv_handler, i32 %95, i32* null, i32* null, %struct.vmlogrdr_priv_t* %96)
  store i32 %97, i32* %8, align 4
  %98 = load i32, i32* %8, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %89
  %101 = load %struct.vmlogrdr_priv_t*, %struct.vmlogrdr_priv_t** %7, align 8
  %102 = getelementptr inbounds %struct.vmlogrdr_priv_t, %struct.vmlogrdr_priv_t* %101, i32 0, i32 7
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* %8, align 4
  %105 = call i32 @pr_err(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %103, i32 %104)
  br label %142

106:                                              ; preds = %89
  %107 = load i32, i32* @conn_wait_queue, align 4
  %108 = load %struct.vmlogrdr_priv_t*, %struct.vmlogrdr_priv_t** %7, align 8
  %109 = getelementptr inbounds %struct.vmlogrdr_priv_t, %struct.vmlogrdr_priv_t* %108, i32 0, i32 6
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %117, label %112

112:                                              ; preds = %106
  %113 = load %struct.vmlogrdr_priv_t*, %struct.vmlogrdr_priv_t** %7, align 8
  %114 = getelementptr inbounds %struct.vmlogrdr_priv_t, %struct.vmlogrdr_priv_t* %113, i32 0, i32 5
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br label %117

117:                                              ; preds = %112, %106
  %118 = phi i1 [ true, %106 ], [ %116, %112 ]
  %119 = zext i1 %118 to i32
  %120 = call i32 @wait_event(i32 %107, i32 %119)
  %121 = load %struct.vmlogrdr_priv_t*, %struct.vmlogrdr_priv_t** %7, align 8
  %122 = getelementptr inbounds %struct.vmlogrdr_priv_t, %struct.vmlogrdr_priv_t* %121, i32 0, i32 5
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %117
  br label %130

126:                                              ; preds = %117
  %127 = load %struct.inode*, %struct.inode** %4, align 8
  %128 = load %struct.file*, %struct.file** %5, align 8
  %129 = call i32 @nonseekable_open(%struct.inode* %127, %struct.file* %128)
  store i32 0, i32* %3, align 4
  br label %154

130:                                              ; preds = %125
  %131 = load %struct.vmlogrdr_priv_t*, %struct.vmlogrdr_priv_t** %7, align 8
  %132 = getelementptr inbounds %struct.vmlogrdr_priv_t, %struct.vmlogrdr_priv_t* %131, i32 0, i32 4
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %141

135:                                              ; preds = %130
  %136 = load %struct.vmlogrdr_priv_t*, %struct.vmlogrdr_priv_t** %7, align 8
  %137 = load %struct.vmlogrdr_priv_t*, %struct.vmlogrdr_priv_t** %7, align 8
  %138 = getelementptr inbounds %struct.vmlogrdr_priv_t, %struct.vmlogrdr_priv_t* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @vmlogrdr_recording(%struct.vmlogrdr_priv_t* %136, i32 0, i32 %139)
  br label %141

141:                                              ; preds = %135, %130
  br label %142

142:                                              ; preds = %141, %100
  %143 = load %struct.vmlogrdr_priv_t*, %struct.vmlogrdr_priv_t** %7, align 8
  %144 = getelementptr inbounds %struct.vmlogrdr_priv_t, %struct.vmlogrdr_priv_t* %143, i32 0, i32 2
  %145 = load i32*, i32** %144, align 8
  %146 = call i32 @kfree(i32* %145)
  %147 = load %struct.vmlogrdr_priv_t*, %struct.vmlogrdr_priv_t** %7, align 8
  %148 = getelementptr inbounds %struct.vmlogrdr_priv_t, %struct.vmlogrdr_priv_t* %147, i32 0, i32 2
  store i32* null, i32** %148, align 8
  br label %149

149:                                              ; preds = %142, %88
  %150 = load %struct.vmlogrdr_priv_t*, %struct.vmlogrdr_priv_t** %7, align 8
  %151 = getelementptr inbounds %struct.vmlogrdr_priv_t, %struct.vmlogrdr_priv_t* %150, i32 0, i32 0
  store i32 0, i32* %151, align 8
  %152 = load i32, i32* @EIO, align 4
  %153 = sub nsw i32 0, %152
  store i32 %153, i32* %3, align 4
  br label %154

154:                                              ; preds = %149, %126, %40, %29, %15
  %155 = load i32, i32* %3, align 4
  ret i32 %155
}

declare dso_local i32 @iminor(%struct.inode*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @vmlogrdr_recording(%struct.vmlogrdr_priv_t*, i32, i32) #1

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i32* @iucv_path_alloc(i32, i32, i32) #1

declare dso_local i32 @iucv_path_connect(i32*, i32*, i32, i32*, i32*, %struct.vmlogrdr_priv_t*) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i32 @nonseekable_open(%struct.inode*, %struct.file*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

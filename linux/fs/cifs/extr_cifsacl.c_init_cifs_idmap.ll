; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_cifsacl.c_init_cifs_idmap.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_cifsacl.c_init_cifs_idmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.cred = type { i32, %struct.key* }
%struct.key = type { i32 }

@FYI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Registering the %s key type\0A\00", align 1
@cifs_idmap_key_type = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c".cifs_idmap\00", align 1
@GLOBAL_ROOT_UID = common dso_local global i32 0, align 4
@GLOBAL_ROOT_GID = common dso_local global i32 0, align 4
@KEY_POS_ALL = common dso_local global i32 0, align 4
@KEY_POS_SETATTR = common dso_local global i32 0, align 4
@KEY_USR_VIEW = common dso_local global i32 0, align 4
@KEY_USR_READ = common dso_local global i32 0, align 4
@KEY_ALLOC_NOT_IN_QUOTA = common dso_local global i32 0, align 4
@KEY_FLAG_ROOT_CAN_CLEAR = common dso_local global i32 0, align 4
@KEY_REQKEY_DEFL_THREAD_KEYRING = common dso_local global i32 0, align 4
@root_cred = common dso_local global %struct.cred* null, align 8
@.str.2 = private unnamed_addr constant [24 x i8] c"cifs idmap keyring: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @init_cifs_idmap() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.cred*, align 8
  %3 = alloca %struct.key*, align 8
  %4 = alloca i32, align 4
  %5 = load i32, i32* @FYI, align 4
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cifs_idmap_key_type, i32 0, i32 0), align 4
  %7 = call i32 @cifs_dbg(i32 %5, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %6)
  %8 = call %struct.cred* @prepare_kernel_cred(i32* null)
  store %struct.cred* %8, %struct.cred** %2, align 8
  %9 = load %struct.cred*, %struct.cred** %2, align 8
  %10 = icmp ne %struct.cred* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %0
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %1, align 4
  br label %62

14:                                               ; preds = %0
  %15 = load i32, i32* @GLOBAL_ROOT_UID, align 4
  %16 = load i32, i32* @GLOBAL_ROOT_GID, align 4
  %17 = load %struct.cred*, %struct.cred** %2, align 8
  %18 = load i32, i32* @KEY_POS_ALL, align 4
  %19 = load i32, i32* @KEY_POS_SETATTR, align 4
  %20 = xor i32 %19, -1
  %21 = and i32 %18, %20
  %22 = load i32, i32* @KEY_USR_VIEW, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @KEY_USR_READ, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @KEY_ALLOC_NOT_IN_QUOTA, align 4
  %27 = call %struct.key* @keyring_alloc(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %15, i32 %16, %struct.cred* %17, i32 %25, i32 %26, i32* null, i32* null)
  store %struct.key* %27, %struct.key** %3, align 8
  %28 = load %struct.key*, %struct.key** %3, align 8
  %29 = call i64 @IS_ERR(%struct.key* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %14
  %32 = load %struct.key*, %struct.key** %3, align 8
  %33 = call i32 @PTR_ERR(%struct.key* %32)
  store i32 %33, i32* %4, align 4
  br label %58

34:                                               ; preds = %14
  %35 = call i32 @register_key_type(%struct.TYPE_3__* @cifs_idmap_key_type)
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %4, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  br label %55

39:                                               ; preds = %34
  %40 = load i32, i32* @KEY_FLAG_ROOT_CAN_CLEAR, align 4
  %41 = load %struct.key*, %struct.key** %3, align 8
  %42 = getelementptr inbounds %struct.key, %struct.key* %41, i32 0, i32 0
  %43 = call i32 @set_bit(i32 %40, i32* %42)
  %44 = load %struct.key*, %struct.key** %3, align 8
  %45 = load %struct.cred*, %struct.cred** %2, align 8
  %46 = getelementptr inbounds %struct.cred, %struct.cred* %45, i32 0, i32 1
  store %struct.key* %44, %struct.key** %46, align 8
  %47 = load i32, i32* @KEY_REQKEY_DEFL_THREAD_KEYRING, align 4
  %48 = load %struct.cred*, %struct.cred** %2, align 8
  %49 = getelementptr inbounds %struct.cred, %struct.cred* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  %50 = load %struct.cred*, %struct.cred** %2, align 8
  store %struct.cred* %50, %struct.cred** @root_cred, align 8
  %51 = load i32, i32* @FYI, align 4
  %52 = load %struct.key*, %struct.key** %3, align 8
  %53 = call i32 @key_serial(%struct.key* %52)
  %54 = call i32 @cifs_dbg(i32 %51, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %53)
  store i32 0, i32* %1, align 4
  br label %62

55:                                               ; preds = %38
  %56 = load %struct.key*, %struct.key** %3, align 8
  %57 = call i32 @key_put(%struct.key* %56)
  br label %58

58:                                               ; preds = %55, %31
  %59 = load %struct.cred*, %struct.cred** %2, align 8
  %60 = call i32 @put_cred(%struct.cred* %59)
  %61 = load i32, i32* %4, align 4
  store i32 %61, i32* %1, align 4
  br label %62

62:                                               ; preds = %58, %39, %11
  %63 = load i32, i32* %1, align 4
  ret i32 %63
}

declare dso_local i32 @cifs_dbg(i32, i8*, i32) #1

declare dso_local %struct.cred* @prepare_kernel_cred(i32*) #1

declare dso_local %struct.key* @keyring_alloc(i8*, i32, i32, %struct.cred*, i32, i32, i32*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.key*) #1

declare dso_local i32 @PTR_ERR(%struct.key*) #1

declare dso_local i32 @register_key_type(%struct.TYPE_3__*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @key_serial(%struct.key*) #1

declare dso_local i32 @key_put(%struct.key*) #1

declare dso_local i32 @put_cred(%struct.cred*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

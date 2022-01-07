
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct gb_i2c_functionality_response {int functionality; } ;
struct gb_i2c_device {int functionality; int connection; } ;
typedef int response ;


 int GB_I2C_TYPE_FUNCTIONALITY ;
 int gb_i2c_functionality_map (int ) ;
 int gb_operation_sync (int ,int ,int *,int ,struct gb_i2c_functionality_response*,int) ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static int gb_i2c_device_setup(struct gb_i2c_device *gb_i2c_dev)
{
 struct gb_i2c_functionality_response response;
 u32 functionality;
 int ret;

 ret = gb_operation_sync(gb_i2c_dev->connection,
    GB_I2C_TYPE_FUNCTIONALITY,
    ((void*)0), 0, &response, sizeof(response));
 if (ret)
  return ret;

 functionality = le32_to_cpu(response.functionality);
 gb_i2c_dev->functionality = gb_i2c_functionality_map(functionality);

 return 0;
}
